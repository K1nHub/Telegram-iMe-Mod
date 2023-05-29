package p034j$.util;

import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Objects;
import p034j$.util.Iterator;
import p034j$.util.function.Consumer;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.G */
/* loaded from: classes2.dex */
public class C2649G implements InterfaceC2727s {

    /* renamed from: a */
    private final Collection f553a;

    /* renamed from: b */
    private Iterator f554b = null;

    /* renamed from: c */
    private final int f555c;

    /* renamed from: d */
    private long f556d;

    /* renamed from: e */
    private int f557e;

    public C2649G(Collection collection, int i) {
        this.f553a = collection;
        this.f555c = (i & 4096) == 0 ? i | 64 | 16384 : i;
    }

    @Override // p034j$.util.InterfaceC2727s
    /* renamed from: b */
    public boolean mo113b(Consumer consumer) {
        Objects.requireNonNull(consumer);
        if (this.f554b == null) {
            this.f554b = this.f553a.iterator();
            this.f556d = this.f553a.size();
        }
        if (this.f554b.hasNext()) {
            consumer.accept(this.f554b.next());
            return true;
        }
        return false;
    }

    @Override // p034j$.util.InterfaceC2727s
    public int characteristics() {
        return this.f555c;
    }

    @Override // p034j$.util.InterfaceC2727s
    public long estimateSize() {
        if (this.f554b == null) {
            this.f554b = this.f553a.iterator();
            long size = this.f553a.size();
            this.f556d = size;
            return size;
        }
        return this.f556d;
    }

    @Override // p034j$.util.InterfaceC2727s
    public void forEachRemaining(Consumer consumer) {
        Objects.requireNonNull(consumer);
        Iterator it = this.f554b;
        if (it == null) {
            it = this.f553a.iterator();
            this.f554b = it;
            this.f556d = this.f553a.size();
        }
        if (it instanceof Iterator) {
            ((Iterator) it).forEachRemaining(consumer);
        } else {
            Iterator.CC.$default$forEachRemaining(it, consumer);
        }
    }

    @Override // p034j$.util.InterfaceC2727s
    public Comparator getComparator() {
        if (AbstractC2654a.m605f(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }

    @Override // p034j$.util.InterfaceC2727s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2654a.m606e(this);
    }

    @Override // p034j$.util.InterfaceC2727s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2654a.m605f(this, i);
    }

    @Override // p034j$.util.InterfaceC2727s
    public InterfaceC2727s trySplit() {
        long j;
        java.util.Iterator it = this.f554b;
        if (it == null) {
            it = this.f553a.iterator();
            this.f554b = it;
            j = this.f553a.size();
            this.f556d = j;
        } else {
            j = this.f556d;
        }
        if (j <= 1 || !it.hasNext()) {
            return null;
        }
        int i = this.f557e + 1024;
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
        this.f557e = i2;
        long j2 = this.f556d;
        if (j2 != Long.MAX_VALUE) {
            this.f556d = j2 - i2;
        }
        return new C3039y(objArr, 0, i2, this.f555c);
    }
}
