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
public class C2610G implements InterfaceC2688s {

    /* renamed from: a */
    private final Collection f550a;

    /* renamed from: b */
    private Iterator f551b = null;

    /* renamed from: c */
    private final int f552c;

    /* renamed from: d */
    private long f553d;

    /* renamed from: e */
    private int f554e;

    public C2610G(Collection collection, int i) {
        this.f550a = collection;
        this.f552c = (i & 4096) == 0 ? i | 64 | 16384 : i;
    }

    @Override // p034j$.util.InterfaceC2688s
    /* renamed from: b */
    public boolean mo108b(Consumer consumer) {
        Objects.requireNonNull(consumer);
        if (this.f551b == null) {
            this.f551b = this.f550a.iterator();
            this.f553d = this.f550a.size();
        }
        if (this.f551b.hasNext()) {
            consumer.accept(this.f551b.next());
            return true;
        }
        return false;
    }

    @Override // p034j$.util.InterfaceC2688s
    public int characteristics() {
        return this.f552c;
    }

    @Override // p034j$.util.InterfaceC2688s
    public long estimateSize() {
        if (this.f551b == null) {
            this.f551b = this.f550a.iterator();
            long size = this.f550a.size();
            this.f553d = size;
            return size;
        }
        return this.f553d;
    }

    @Override // p034j$.util.InterfaceC2688s
    public void forEachRemaining(Consumer consumer) {
        Objects.requireNonNull(consumer);
        Iterator it = this.f551b;
        if (it == null) {
            it = this.f550a.iterator();
            this.f551b = it;
            this.f553d = this.f550a.size();
        }
        if (it instanceof Iterator) {
            ((Iterator) it).forEachRemaining(consumer);
        } else {
            Iterator.CC.$default$forEachRemaining(it, consumer);
        }
    }

    @Override // p034j$.util.InterfaceC2688s
    public Comparator getComparator() {
        if (AbstractC2615a.m601f(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2615a.m602e(this);
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2615a.m601f(this, i);
    }

    @Override // p034j$.util.InterfaceC2688s
    public InterfaceC2688s trySplit() {
        long j;
        java.util.Iterator it = this.f551b;
        if (it == null) {
            it = this.f550a.iterator();
            this.f551b = it;
            j = this.f550a.size();
            this.f553d = j;
        } else {
            j = this.f553d;
        }
        if (j <= 1 || !it.hasNext()) {
            return null;
        }
        int i = this.f554e + 1024;
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
        this.f554e = i2;
        long j2 = this.f553d;
        if (j2 != Long.MAX_VALUE) {
            this.f553d = j2 - i2;
        }
        return new C3000y(objArr, 0, i2, this.f552c);
    }
}
