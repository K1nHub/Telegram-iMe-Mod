package io.grpc;

import com.google.common.base.Objects;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public final class Attributes {
    public static final Attributes EMPTY = new Attributes(Collections.emptyMap());
    private final Map<Key<?>, Object> data;

    private Attributes(Map<Key<?>, Object> map) {
        this.data = map;
    }

    public <T> T get(Key<T> key) {
        return (T) this.data.get(key);
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public Builder toBuilder() {
        return new Builder();
    }

    /* loaded from: classes3.dex */
    public static final class Key<T> {
        private final String debugString;

        private Key(String str) {
            this.debugString = str;
        }

        public String toString() {
            return this.debugString;
        }

        public static <T> Key<T> create(String str) {
            return new Key<>(str);
        }
    }

    public String toString() {
        return this.data.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0031  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r7) {
        /*
            r6 = this;
            r0 = 1
            if (r6 != r7) goto L4
            return r0
        L4:
            r1 = 0
            if (r7 == 0) goto L5a
            java.lang.Class<io.grpc.Attributes> r2 = io.grpc.Attributes.class
            java.lang.Class r3 = r7.getClass()
            if (r2 == r3) goto L10
            goto L5a
        L10:
            io.grpc.Attributes r7 = (io.grpc.Attributes) r7
            java.util.Map<io.grpc.Attributes$Key<?>, java.lang.Object> r2 = r6.data
            int r2 = r2.size()
            java.util.Map<io.grpc.Attributes$Key<?>, java.lang.Object> r3 = r7.data
            int r3 = r3.size()
            if (r2 == r3) goto L21
            return r1
        L21:
            java.util.Map<io.grpc.Attributes$Key<?>, java.lang.Object> r2 = r6.data
            java.util.Set r2 = r2.entrySet()
            java.util.Iterator r2 = r2.iterator()
        L2b:
            boolean r3 = r2.hasNext()
            if (r3 == 0) goto L59
            java.lang.Object r3 = r2.next()
            java.util.Map$Entry r3 = (java.util.Map.Entry) r3
            java.util.Map<io.grpc.Attributes$Key<?>, java.lang.Object> r4 = r7.data
            java.lang.Object r5 = r3.getKey()
            boolean r4 = r4.containsKey(r5)
            if (r4 != 0) goto L44
            return r1
        L44:
            java.lang.Object r4 = r3.getValue()
            java.util.Map<io.grpc.Attributes$Key<?>, java.lang.Object> r5 = r7.data
            java.lang.Object r3 = r3.getKey()
            java.lang.Object r3 = r5.get(r3)
            boolean r3 = com.google.common.base.Objects.equal(r4, r3)
            if (r3 != 0) goto L2b
            return r1
        L59:
            return r0
        L5a:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.Attributes.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        int i = 0;
        for (Map.Entry<Key<?>, Object> entry : this.data.entrySet()) {
            i += Objects.hashCode(entry.getKey(), entry.getValue());
        }
        return i;
    }

    /* loaded from: classes3.dex */
    public static final class Builder {
        private Attributes base;
        private Map<Key<?>, Object> newdata;

        private Builder(Attributes attributes) {
            this.base = attributes;
        }

        private Map<Key<?>, Object> data(int i) {
            if (this.newdata == null) {
                this.newdata = new IdentityHashMap(i);
            }
            return this.newdata;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public <T> Builder set(Key<T> key, T t) {
            data(1).put(key, t);
            return this;
        }

        public <T> Builder discard(Key<T> key) {
            if (this.base.data.containsKey(key)) {
                IdentityHashMap identityHashMap = new IdentityHashMap(this.base.data);
                identityHashMap.remove(key);
                this.base = new Attributes(identityHashMap);
            }
            Map<Key<?>, Object> map = this.newdata;
            if (map != null) {
                map.remove(key);
            }
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Attributes build() {
            if (this.newdata != null) {
                for (Map.Entry entry : this.base.data.entrySet()) {
                    if (!this.newdata.containsKey(entry.getKey())) {
                        this.newdata.put(entry.getKey(), entry.getValue());
                    }
                }
                this.base = new Attributes(this.newdata);
                this.newdata = null;
            }
            return this.base;
        }
    }
}
