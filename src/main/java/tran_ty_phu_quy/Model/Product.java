package tran_ty_phu_quy.Model;
public class Product {
    private int id;
    private String model;
    private String image;
    private double price;
    private String description;
    private String Specification;
    private String color;
    private String ram;
    private String rom;
    private String battery;

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getSpecification() {
        return Specification;
    }

    public void setSpecification(String specification) {
        Specification = specification;
    }

    public String getRam() {
        return ram;
    }

    public void setRam(String ram) {
        this.ram = ram;
    }

    public String getRom() {
        return rom;
    }

    public void setRom(String rom) {
        this.rom = rom;
    }

    public String getBattery() {
        return battery;
    }

    public void setBattery(String battery) {
        this.battery = battery;
    }

    public Product() {
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Product(int id, String model, String image, double price,String color,String ram,String rom,
                   String battery,String description) {
        this.id = id;
        this.model = model;
        this.image = image;
        this.price = price;
        this.color=color;
        this.ram=ram;
        this.rom=rom;
        this.battery=battery;
        this.description = description;
    }

    public int getId() {
        return id;
    }

    public String getModel() {
        return model;
    }

    public String getImage() {
        return image;
    }

    public String getDescription() {
        return description;
    }

    public double getPrice() {
        return price;
    }

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", model='" + model + '\'' +
                ", image='" + image + '\'' +
                ", price=" + price +
                ", description='" + description + '\'' +
                ", color='" + color + '\'' +
                ", ram='" + ram + '\'' +
                ", rom='" + rom + '\'' +
                ", battery='" + battery + '\'' +
                '}';
    }
}
