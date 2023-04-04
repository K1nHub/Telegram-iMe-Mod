package p035j$.util;

import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Objects;
import p035j$.util.Iterator;
import p035j$.util.function.Consumer;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.G */
/* loaded from: classes2.dex */
public class C2623G implements InterfaceC2701s {

    /* renamed from: a */
    private final Collection f555a;

    /* renamed from: b */
    private Iterator f556b = null;

    /* renamed from: c */
    private final int f557c;

    /* renamed from: d */
    private long f558d;

    /* renamed from: e */
    private int f559e;

    public C2623G(Collection collection, int i) {
        this.f555a = collection;
        this.f557c = (i & 4096) == 0 ? i | 64 | 16384 : i;
    }

    @Override // p035j$.util.InterfaceC2701s
    /* renamed from: b */
    public boolean mo122b(Consumer consumer) {
        Objects.requireNonNull(consumer);
        if (this.f556b == null) {
            this.f556b = this.f555a.iterator();
            this.f558d = this.f555a.size();
        }
        if (this.f556b.hasNext()) {
            consumer.accept(this.f556b.next());
            return true;
        }
        return false;
    }

    @Override // p035j$.util.InterfaceC2701s
    public int characteristics() {
        return this.f557c;
    }

    @Override // p035j$.util.InterfaceC2701s
    public long estimateSize() {
        if (this.f556b == null) {
            this.f556b = this.f555a.iterator();
            long size = this.f555a.size();
            this.f558d = size;
            return size;
        }
        return this.f558d;
    }

    @Override // p035j$.util.InterfaceC2701s
    public void forEachRemaining(Consumer consumer) {
        Objects.requireNonNull(consumer);
        Iterator it = this.f556b;
        if (it == null) {
            it = this.f555a.iterator();
            this.f556b = it;
            this.f558d = this.f555a.size();
        }
        if (it instanceof Iterator) {
            ((Iterator) it).forEachRemaining(consumer);
        } else {
            Iterator.CC.$default$forEachRemaining(it, consumer);
        }
    }

    @Override // p035j$.util.InterfaceC2701s
    public Comparator getComparator() {
        if (AbstractC2628a.m615f(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2628a.m616e(this);
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2628a.m615f(this, i);
    }

    @Override // p035j$.util.InterfaceC2701s
    public InterfaceC2701s trySplit() {
        long j;
        java.util.Iterator it = this.f556b;
        if (it == null) {
            it = this.f555a.iterator();
            this.f556b = it;
            j = this.f555a.size();
            this.f558d = j;
        } else {
            j = this.f558d;
        }
        if (j <= 1 || !it.hasNext()) {
            return null;
        }
        int i = this.f559e + 1024;
        if (i > j) {
            i = (int) j;
        }
        if (i > 33554432) {
            i = 33554432;
        }
        Object[] objArr = new Object[i];
        int i2 = 0;
        do {
            objArr[i2] = it.next();
            i2++;
            if (i2 >= i) {
                break;
            }
        } while (it.hasNext());
        this.f559e = i2;
        long j2 = this.f558d;
        if (j2 != Long.MAX_VALUE) {
            this.f558d = j2 - i2;
        }
        return new C3013y(objArr, 0, i2, this.f557c);
    }
}
