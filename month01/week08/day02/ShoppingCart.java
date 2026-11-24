/**
     * Хамгийн ихдээ 5 бараа багтаах худалдааны сагс.
     *
     * @author Khangaikhuu
     */
    public class ShoppingCart {
        private Product[] items;
        private int count;
        public ShoppingCart() {
            // TODO 1: items = new Product[5]; count = 0;
            items = new Product[5];
            count = 0;
        }
        // TODO 2: getItemCount (() -> int) бичнэ үү
        public int getItemCount(){
            return count;
        }
        // TODO 3: addProduct гэдэг нэртэй method бичнэ үү
        // Product -> boolean (p авна)
        // Хэрэв p != null БА count < 5 бол items[count] = p; count++; хийгээд
        //true буцаана.
        public boolean addProduct(Product p){
            if( p != null && count < 5){
                items[count] = p;
                count ++;
                return true;
            }
            else{
                return false;
            }
        }
        // TODO 4: getTotalPrice гэдэг нэртэй method бичнэ үү
        // () -> double
        // Сагсанд байгаа бүх барааны үнийн нийлбэрийг давталтаар бодож
        //буцаана.
        public double getTotalPrice(){
            double sum = 0.0;
            for(int i = 0; i < count; ++i){
                double price;
                price = items[i].getPrice();
                sum += price;
            }
            return sum;
        }
    }
