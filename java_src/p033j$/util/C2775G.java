package p033j$.util;

import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Objects;
import p033j$.util.Iterator;
import p033j$.util.function.Consumer;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.G */
/* loaded from: classes2.dex */
public class C2775G implements InterfaceC2853s {

    /* renamed from: a */
    private final Collection f635a;

    /* renamed from: b */
    private Iterator f636b = null;

    /* renamed from: c */
    private final int f637c;

    /* renamed from: d */
    private long f638d;

    /* renamed from: e */
    private int f639e;

    public C2775G(Collection collection, int i) {
        this.f635a = collection;
        this.f637c = (i & 4096) == 0 ? i | 64 | 16384 : i;
    }

    @Override // p033j$.util.InterfaceC2853s
    /* renamed from: b */
    public boolean mo113b(Consumer consumer) {
        Objects.requireNonNull(consumer);
        if (this.f636b == null) {
            this.f636b = this.f635a.iterator();
            this.f638d = this.f635a.size();
        }
        if (this.f636b.hasNext()) {
            consumer.accept(this.f636b.next());
            return true;
        }
        return false;
    }

    @Override // p033j$.util.InterfaceC2853s
    public int characteristics() {
        return this.f637c;
    }

    @Override // p033j$.util.InterfaceC2853s
    public long estimateSize() {
        if (this.f636b == null) {
            this.f636b = this.f635a.iterator();
            long size = this.f635a.size();
            this.f638d = size;
            return size;
        }
        return this.f638d;
    }

    @Override // p033j$.util.InterfaceC2853s
    public void forEachRemaining(Consumer consumer) {
        Objects.requireNonNull(consumer);
        Iterator it = this.f636b;
        if (it == null) {
            it = this.f635a.iterator();
            this.f636b = it;
            this.f638d = this.f635a.size();
        }
        if (it instanceof Iterator) {
            ((Iterator) it).forEachRemaining(consumer);
        } else {
            Iterator.CC.$default$forEachRemaining(it, consumer);
        }
    }

    @Override // p033j$.util.InterfaceC2853s
    public Comparator getComparator() {
        if (AbstractC2780a.m605f(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2780a.m606e(this);
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2780a.m605f(this, i);
    }

    @Override // p033j$.util.InterfaceC2853s
    public InterfaceC2853s trySplit() {
        long j;
        java.util.Iterator it = this.f636b;
        if (it == null) {
            it = this.f635a.iterator();
            this.f636b = it;
            j = this.f635a.size();
            this.f638d = j;
        } else {
            j = this.f638d;
        }
        if (j <= 1 || !it.hasNext()) {
            return null;
        }
        int i = this.f639e + 1024;
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
        this.f639e = i2;
        long j2 = this.f638d;
        if (j2 != Long.MAX_VALUE) {
            this.f638d = j2 - i2;
        }
        return new C3165y(objArr, 0, i2, this.f637c);
    }
}
