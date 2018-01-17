package domain;

import java.sql.*;
import java.time.Instant;
import java.util.ArrayList;
import java.util.List;

public class News {
    private Connection connection;

    public News() {
        final String USER = "postgres";
        final String PASSWORD = "1604";
        final String DB_NAME = "postgres";
        try {
            Class.forName("org.postgresql.Driver");
            connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/" + DB_NAME, USER, PASSWORD);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    private String newsText;
    private String headerText;

    public String getHeaderText() {
        return headerText;
    }

    public void setHeaderText(String headerText) {
        this.headerText = headerText;
    }

    @Override
    public String toString() {
        return "News{" +
                "newsText='" + newsText + '\'' +
                ", headerText='" + headerText + '\'' +
                ", newsTime=" + newsTime +
                '}';
    }

    private Instant newsTime = Instant.now();

    public Instant getNewsTime() {
        return newsTime;
    }

    public void setNewsTime(Instant newsTime) {
        this.newsTime = newsTime;
    }

    public String getNewsText() {
        return newsText;
    }

    public void setNewsText(String newsText) {
        this.newsText = newsText;
    }


    public void addNews(String text, String header) throws SQLException {
        Instant time = Instant.now();
        Statement statement = connection.createStatement();
        try {
            statement.execute("INSERT INTO news(text,time,header) VALUES('" + text + "','" + time + "','" + header + "')  ");

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException e) {
                }
            } else if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException e) {

                }
            }
        }
    }


    public static void deleteNews() {

    }


    public List<News> showNews() {
        List<News> list = new ArrayList<>();
        try {
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM news");
            while (rs.next()) {
                News news = new News();
                news.setNewsText(rs.getString("text"));
                news.setHeaderText(rs.getString("header"));
                list.add(news);
            }
            rs.close();
            statement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
}
