package nguyen_pham_quoc_huy.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.HashSet;
import java.util.Set;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Employee {
    private Integer id;
    private String firstName;
    private String lastName;
    private String phoneNumber;
    private String imagePath;
    private String email;
    private String password;
    private boolean enabled;
    private Set<Role> roles = new HashSet<>();
    private Address address;

    public Employee(Integer id, String firstName, String lastName, String phoneNumber, Address address, String imagePath,
                    String email, boolean enabled) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.phoneNumber = phoneNumber;
        this.address = address;
        this.imagePath = imagePath;
        this.email = email;
        this.enabled = enabled;
    }

    public Employee(String firstName, String lastName, String phoneNumber, Address address, String imagePath, String email,
                    String password, boolean enabled) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.phoneNumber = phoneNumber;
        this.address = address;
        this.imagePath = imagePath;
        this.email = email;
        this.password = password;
        this.enabled = enabled;
    }

    public Employee(Integer id, String firstName, String lastName, String phoneNumber, Address address, String imagePath,
                    String email, String password, boolean enabled) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.phoneNumber = phoneNumber;
        this.address = address;
        this.imagePath = imagePath;
        this.email = email;
        this.password = password;
        this.enabled = enabled;
    }

    public Employee(Integer id, String firstName, String lastName, String email, String imagePath) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.imagePath = imagePath;
    }

    public Employee(Integer id, String firstName, String lastName, String email) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
    }

    public Employee(String firstName, String lastName, String phoneNumber, Address address, String email, String password, boolean enabled) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.phoneNumber = phoneNumber;
        this.address = address;
        this.email = email;
        this.password = password;
        this.enabled = enabled;
    }

    public void addRole(Role role) {
        this.roles.add(role);
    }

    @Override
    public String toString() {
        return "Employee{" + "id=" + id + ", firstName='" + firstName + '\'' + ", lastName='" + lastName + '\'' +
                ", phoneNumber='" + phoneNumber + '\'' + ", email='" + email + '\'' + ", password='" + password + '\'' +
                ", enabled=" + enabled + ", roles=" + roles + ", address=" + address + '}';
    }
}
