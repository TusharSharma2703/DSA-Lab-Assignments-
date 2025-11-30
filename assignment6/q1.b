#include <iostream>
using namespace std;

struct DNode {
    int data;
    DNode* prev;
    DNode* next;
};

DNode* head = NULL;

void insertFirst(int x) {
    DNode* n = new DNode{ x, NULL, NULL };
    if (!head) {
        head = n;
        return;
    }
    n->next = head;
    head->prev = n;
    head = n;
}

void insertLast(int x) {
    DNode* n = new DNode{ x, NULL, NULL };
    if (!head) {
        head = n;
        return;
    }
    DNode* temp = head;
    while (temp->next) temp = temp->next;
    temp->next = n;
    n->prev = temp;
}

void insertAfter(int key, int x) {
    DNode* temp = head;
    while (temp) {
        if (temp->data == key) {
            DNode* n = new DNode{ x, temp, temp->next };
            if (temp->next) temp->next->prev = n;
            temp->next = n;
            return;
        }
        temp = temp->next;
    }
}

void insertBefore(int key, int x) {
    if (!head) return;
    if (head->data == key) {
        insertFirst(x);
        return;
    }
    DNode* temp = head->next;
    while (temp) {
        if (temp->data == key) {
            DNode* n = new DNode{ x, temp->prev, temp };
            temp->prev->next = n;
            temp->prev = n;
            return;
        }
        temp = temp->next;
    }
}

void deleteValue(int key) {
    if (!head) return;
    if (head->data == key) {
        DNode* del = head;
        head = head->next;
        if (head) head->prev = NULL;
        delete del;
        return;
    }
    DNode* temp = head->next;
    while (temp) {
        if (temp->data == key) {
            temp->prev->next = temp->next;
            if (temp->next) temp->next->prev = temp->prev;
            delete temp;
            return;
        }
        temp = temp->next;
    }
}

void search(int key) {
    DNode* temp = head;
    int pos = 1;
    while (temp) {
        if (temp->data == key) {
            cout << "Found at position " << pos << "\n";
            return;
        }
        temp = temp->next;
        pos++;
    }
    cout << "Not found\n";
}

void display() {
    if (!head) {
        cout << "List is empty\n";
        return;
    }
    DNode* temp = head;
    while (temp) {
        cout << temp->data << " ";
        temp = temp->next;
    }
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
