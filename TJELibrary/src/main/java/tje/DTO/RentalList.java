package tje.DTO;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class RentalList {

	private int no;
	private String id;
	private int bookId;
	private int stockId;
	private String state;
	private Date rentalDate;
	private Date returnDate;
	private int overDate;
	
    public RentalList(int stockId, int bookId, String id) {
        this.stockId = stockId;
        this.bookId = bookId;  // Store the bookId
        this.id = id;
    }

}
