package org.solovyev.android.checkout;
/* loaded from: classes4.dex */
public interface Cache {
    Entry get(Key key);

    void put(Key key, Entry entry);

    void remove(Key key);

    void removeAll(int i);

    /* loaded from: classes4.dex */
    public static final class Key {
        public final String key;
        public final int type;

        /* JADX INFO: Access modifiers changed from: package-private */
        public Key(int i, String str) {
            this.type = i;
            this.key = str;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Key) {
                Key key = (Key) obj;
                return this.type == key.type && this.key.equals(key.key);
            }
            return false;
        }

        public int hashCode() {
            return (this.type * 31) + this.key.hashCode();
        }

        public String toString() {
            return RequestType.getCacheKeyName(this.type) + "_" + this.key;
        }
    }

    /* loaded from: classes4.dex */
    public static final class Entry {
        public final Object data;
        public final long expiresAt;

        /* JADX INFO: Access modifiers changed from: package-private */
        public Entry(Object obj, long j) {
            this.data = obj;
            this.expiresAt = j;
        }
    }
}
