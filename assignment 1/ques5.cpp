#include <iostream>
using namespace std;

int main() {
    int a[10][10], m, n;

    cout << "Enter number of rows: ";
    cin >> m;
    cout << "Enter number of columns: ";
    cin >> n;

    cout << "Enter matrix elements:\n";
    for (int i = 0; i < m; i++) {
        for (int j = 0; j < n; j++) {
            cin >> a[i][j];
        }
    }

    cout << "\nSum of each row:\n";
    for (int i = 0; i < m; i++) {
        int sum = 0;
        for (int j = 0; j < n; j++) {
            sum += a[i][j];
        }
        cout << "Row " << i + 1 << " = " << sum << endl;
    }

    cout << "\nSum of each column:\n";
    for (int j = 0; j < n; j++) {
        int sum = 0;
        for (int i = 0; i < m; i++) {
            sum += a[i][j];
        }
        cout << "Column " << j + 1 << " = " << sum << endl;
    }

    return 0;
}
