import java.util.*;

public class Beautiful {
    public static boolean find(int N, int M, int[][] a, int[][] b){
        for(int i=0; i<N; i++){
            int c1 = 0;
            for(int j=0; j<M; j++){
                c1 += (a[i][j] - b[i][j] + 3)%3;
            }

            if(c1!=0) return false;
        }

        for(int i=0; i<M; i++){
            int c1 = 0;
            for(int j=0; j<N; j++){
                c1 += (a[j][i] - b[j][i] + 3)%3;
            }

            if(c1!=0) return false;
        }

        return true;
    }
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int T = sc.nextInt();

        while(T-->0){
            int N = sc.nextInt();
            int M = sc.nextInt();
            int[][] a = new int[N][M];
            int[][] b = new int[N][M];
            for(int i=0; i<N; i++){
                String s = sc.next();
                for(int j=0; j<M; j++){
                    a[i][j] = (s.charAt(j) - '0');
                }
            }

            for(int i=0; i<N; i++){
                String s = sc.next();
                for(int j=0; j<M; j++){
                    b[i][j] =  (s.charAt(j) - '0');
                }
            }

            System.out.println((find(N, M, a, b) ? "YES" : "NO"));
        }
    }
}
