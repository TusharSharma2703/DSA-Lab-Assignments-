#include <iostream>
using namespace std;

struct Node {
    int data;
    Node* next;
};

Node* head = NULL;

void insertFirst(int x) {
    Node* n = new Node{ x, NULL };
    if (!head) {
        head = n;
        n->next = head;
        return;
    }
    Node* temp = head;
    while (temp->next != head) temp = temp->next;
    n->next = head;
    temp->next = n;
    head = n;
}

void insertLast(int x) {
    Node* n = new Node{ x, NULL };
    if (!head) {
        head = n;
        n->next = head;
        return;
    }
    Node* temp = head;
    while (temp->next != head) temp = temp->next;
    temp->next = n;
    n->next = head;
}

void insertAfter(int key, int x) {
    if (!head) return;
    Node* temp = head;
    do {
        if (temp->data == key) {
            Node* n = new Node{ x, temp->next };
            temp->next = n;
            return;
        }
        temp = temp->next;
    } while (temp != head);
}

void insertBefore(int key, int x) {
    if (!head) return;
    if (head->data == key) {
        insertFirst(x);
        return;
    }
    Node* temp = head;
    Node* prev = NULL;
    do {
        if (temp->data == key) {
            Node* n = new Node{ x, temp };
            prev->next = n;
            return;
        }
        prev = temp;
        temp = temp->next;
    } while (temp != head);
}

void deleteValue(int key) {
    if (!head) return;
    if (head->data == key && head->next == head) {
        delete head;
        head = NULL;
        return;
    }
    if (head->data == key) {
        Node* temp = head;
        while (temp->next != head) temp = temp->next;
        Node* del = head;
        head = head->next;
        temp->next = head;
        delete del;
        return;
    }
    Node* temp = head;
    Node* prev = NULL;
    do {
        if (temp->data == key) {
            prev->next = temp->next;
            delete temp;
            return;
        }
        prev = temp;
        temp = temp->next;
    } while (temp != head);
}

void search(int key) {
    if (!head) {
        cout << "Not found\n";
        return;
    }
    Node* temp = head;
    int pos = 1;
    do {
        if (temp->data == key) {
            cout << "Found at position " << pos << "\n";
            return;
        }
        temp = temp->next;
        pos++;
    } while (temp != head);
    cout << "Not found\n";
}

void display() {
    if (!head) {
        cout << "List is empty\n";
        return;
    }
    Node* temp = head;
    do {
        cout << temp->data << " ";
        temp = temp->next;
    } while (temp != head);
    cout << "\n";
}

int main() {
    int ch, x, key;
    while (true) {
        cin >> ch;
        if (ch == 8) break;
        if (ch == 1) {
            cin >> x;
            insertFirst(x);
        } else if (ch == 2) {
            cin >> x;
            insertLast(x);
        } else if (ch == 3) {
            cin >> key >> x;
            insertAfter(key, x);
        } else if (ch == 4) {
            cin >> key >> x;
            insertBefore(key, x);
        } else if (ch == 5) {
            cin >> key;
            deleteValue(key);
        } else if (ch == 6) {
            cin >> key;
            search(key);
        } else if (ch == 7) {
            display();
        }
    }
    return 0;
}
