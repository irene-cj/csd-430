package beans;

/* Irene Carrillo Jaramillo, Module 4 Java bean Assignment 10/04/2025
 * This program will create a JavaBean that will hold data from my favorite books. CSD 430 */


import java.io.Serializable;

public class FavBookBean implements Serializable {

    // This is the fields used.
    private String title;
    private String author;
    private String genre;
    private int year;
    private String description;

    // This is the constructor.
    public FavBookBean(String title, String author, String genre, int year, String description) {
        this.title = title;
        this.author = author;
        this.genre = genre;
        this.year = year;
        this.description = description;
    }

    // These are the getters.
    public String getTitle() { return title; }
    public String getAuthor() { return author; }
    public String getGenre() { return genre; }
    public int getYear() { return year; }
    public String getDescription() { return description; }

    // These are the setters.
    public void setTitle(String title) { this.title = title; }
    public void setAuthor(String author) { this.author = author; }
    public void setGenre(String genre) { this.genre = genre; }
    public void setYear(int year) { this.year = year; }
    public void setDescription(String description) { this.description = description; }
}