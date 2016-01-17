package DataBase;

public class Species {
    String name;
    String[] Tags;
    String[] Picture;
    String Description;

    public Species() {
    }

    public Species(String name, String[] tags, String[] picture, String description) {
        this.name = name;
        Tags = tags;
        Picture = picture;
        Description = description;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String[] getTags() {
        return Tags;
    }

    public void setTags(String tags) {
        Tags = tags.split(" ");
    }

    public String[] getPicture() {
        return Picture;
    }

    public void setPicture(String picture) {
        Picture = picture.split(" ");
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String description) {
        Description = description;
    }
}
