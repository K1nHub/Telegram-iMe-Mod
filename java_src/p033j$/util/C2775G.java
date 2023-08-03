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
    private final Collection f638a;

    /* renamed from: b */
    private Iterator f639b = null;

    /* renamed from: c */
    private final int f640c;

    /* renamed from: d */
    private long f641d;

    /* renamed from: e */
    private int f642e;

    public C2775G(Collection collection, int i) {
        this.f638a = collection;
        this.f640c = (i & 4096) == 0 ? i | 64 | 16384 : i;
    }

    @Override // p033j$.util.InterfaceC2853s
    /* renamed from: b */
    public boolean mo131b(Consumer consumer) {
        Objects.requireNonNull(consumer);
        if (this.f639b == null) {
            this.f639b = this.f638a.iterator();
            this.f641d = this.f638a.size();
        }
        if (this.f639b.hasNext()) {
            consumer.accept(this.f639b.next());
            return true;
        }
        return false;
    }

    @Override // p033j$.util.InterfaceC2853s
    public int characteristics() {
        return this.f640c;
    }

    @Override // p033j$.util.InterfaceC2853s
    public long estimateSize() {
        if (this.f639b == null) {
            this.f639b = this.f638a.iterator();
            long size = this.f638a.size();
            this.f641d = size;
            return size;
        }
        return this.f641d;
    }

    @Override // p033j$.util.InterfaceC2853s
    public void forEachRemaining(Consumer consumer) {
        Objects.requireNonNull(consumer);
        Iterator it = this.f639b;
        if (it == null) {
            it = this.f638a.iterator();
            this.f639b = it;
            this.f641d = this.f638a.size();
        }
        if (it instanceof Iterator) {
            ((Iterator) it).forEachRemaining(consumer);
        } else {
            Iterator.CC.$default$forEachRemaining(it, consumer);
        }
    }

    @Override // p033j$.util.InterfaceC2853s
    public Comparator getComparator() {
        if (AbstractC2780a.m623f(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2780a.m624e(this);
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2780a.m623f(this, i);
    }

    @Override // p033j$.util.InterfaceC2853s
    public InterfaceC2853s trySplit() {
        long j;
        java.util.Iterator it = this.f639b;
        if (it == null) {
            it = this.f638a.iterator();
            this.f639b = it;
            j = this.f638a.size();
            this.f641d = j;
        } else {
            j = this.f641d;
        }
        if (j <= 1 || !it.hasNext()) {
            return null;
        }
        int i = this.f642e + 1024;
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
        this.f642e = i2;
        long j2 = this.f641d;
        if (j2 != Long.MAX_VALUE) {
            this.f641d = j2 - i2;
        }
        return new C3165y(objArr, 0, i2, this.f640c);
    }
}
