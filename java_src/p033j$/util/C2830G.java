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
public class C2830G implements InterfaceC2908s {

    /* renamed from: a */
    private final Collection f639a;

    /* renamed from: b */
    private Iterator f640b = null;

    /* renamed from: c */
    private final int f641c;

    /* renamed from: d */
    private long f642d;

    /* renamed from: e */
    private int f643e;

    public C2830G(Collection collection, int i) {
        this.f639a = collection;
        this.f641c = (i & 4096) == 0 ? i | 64 | 16384 : i;
    }

    @Override // p033j$.util.InterfaceC2908s
    /* renamed from: b */
    public boolean mo131b(Consumer consumer) {
        Objects.requireNonNull(consumer);
        if (this.f640b == null) {
            this.f640b = this.f639a.iterator();
            this.f642d = this.f639a.size();
        }
        if (this.f640b.hasNext()) {
            consumer.accept(this.f640b.next());
            return true;
        }
        return false;
    }

    @Override // p033j$.util.InterfaceC2908s
    public int characteristics() {
        return this.f641c;
    }

    @Override // p033j$.util.InterfaceC2908s
    public long estimateSize() {
        if (this.f640b == null) {
            this.f640b = this.f639a.iterator();
            long size = this.f639a.size();
            this.f642d = size;
            return size;
        }
        return this.f642d;
    }

    @Override // p033j$.util.InterfaceC2908s
    public void forEachRemaining(Consumer consumer) {
        Objects.requireNonNull(consumer);
        Iterator it = this.f640b;
        if (it == null) {
            it = this.f639a.iterator();
            this.f640b = it;
            this.f642d = this.f639a.size();
        }
        if (it instanceof Iterator) {
            ((Iterator) it).forEachRemaining(consumer);
        } else {
            Iterator.CC.$default$forEachRemaining(it, consumer);
        }
    }

    @Override // p033j$.util.InterfaceC2908s
    public Comparator getComparator() {
        if (AbstractC2835a.m623f(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2835a.m624e(this);
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2835a.m623f(this, i);
    }

    @Override // p033j$.util.InterfaceC2908s
    public InterfaceC2908s trySplit() {
        long j;
        java.util.Iterator it = this.f640b;
        if (it == null) {
            it = this.f639a.iterator();
            this.f640b = it;
            j = this.f639a.size();
            this.f642d = j;
        } else {
            j = this.f642d;
        }
        if (j <= 1 || !it.hasNext()) {
            return null;
        }
        int i = this.f643e + 1024;
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
        this.f643e = i2;
        long j2 = this.f642d;
        if (j2 != Long.MAX_VALUE) {
            this.f642d = j2 - i2;
        }
        return new C3220y(objArr, 0, i2, this.f641c);
    }
}
