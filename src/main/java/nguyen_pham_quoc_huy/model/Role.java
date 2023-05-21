package nguyen_pham_quoc_huy.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Objects;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Role {
    private Integer id;
    private String name;
    private String description;
    public Role(Integer id) {
        this.id = id;
    }
    public Role(Integer id, String name) {
        this.id = id;
        this.name = name;
    }
    public Role(String name, String description) {
        this.name = name;
        this.description = description;
    }
    @Override
    public String toString() {
        return name;
    }
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Role role = (Role) o;
        return id.equals(role.id) && name.equals(role.name) && description.equals(role.description);
    }
    @Override
    public int hashCode() {
        return Objects.hash(id, name, description);
    }
}
