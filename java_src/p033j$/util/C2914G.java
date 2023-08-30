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
public class C2914G implements InterfaceC2992s {

    /* renamed from: a */
    private final Collection f648a;

    /* renamed from: b */
    private Iterator f649b = null;

    /* renamed from: c */
    private final int f650c;

    /* renamed from: d */
    private long f651d;

    /* renamed from: e */
    private int f652e;

    public C2914G(Collection collection, int i) {
        this.f648a = collection;
        this.f650c = (i & 4096) == 0 ? i | 64 | 16384 : i;
    }

    @Override // p033j$.util.InterfaceC2992s
    /* renamed from: b */
    public boolean mo131b(Consumer consumer) {
        Objects.requireNonNull(consumer);
        if (this.f649b == null) {
            this.f649b = this.f648a.iterator();
            this.f651d = this.f648a.size();
        }
        if (this.f649b.hasNext()) {
            consumer.accept(this.f649b.next());
            return true;
        }
        return false;
    }

    @Override // p033j$.util.InterfaceC2992s
    public int characteristics() {
        return this.f650c;
    }

    @Override // p033j$.util.InterfaceC2992s
    public long estimateSize() {
        if (this.f649b == null) {
            this.f649b = this.f648a.iterator();
            long size = this.f648a.size();
            this.f651d = size;
            return size;
        }
        return this.f651d;
    }

    @Override // p033j$.util.InterfaceC2992s
    public void forEachRemaining(Consumer consumer) {
        Objects.requireNonNull(consumer);
        Iterator it = this.f649b;
        if (it == null) {
            it = this.f648a.iterator();
            this.f649b = it;
            this.f651d = this.f648a.size();
        }
        if (it instanceof Iterator) {
            ((Iterator) it).forEachRemaining(consumer);
        } else {
            Iterator.CC.$default$forEachRemaining(it, consumer);
        }
    }

    @Override // p033j$.util.InterfaceC2992s
    public Comparator getComparator() {
        if (AbstractC2919a.m623f(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2919a.m624e(this);
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2919a.m623f(this, i);
    }

    @Override // p033j$.util.InterfaceC2992s
    public InterfaceC2992s trySplit() {
        long j;
        java.util.Iterator it = this.f649b;
        if (it == null) {
            it = this.f648a.iterator();
            this.f649b = it;
            j = this.f648a.size();
            this.f651d = j;
        } else {
            j = this.f651d;
        }
        if (j <= 1 || !it.hasNext()) {
            return null;
        }
        int i = this.f652e + 1024;
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
        this.f652e = i2;
        long j2 = this.f651d;
        if (j2 != Long.MAX_VALUE) {
            this.f651d = j2 - i2;
        }
        return new C3304y(objArr, 0, i2, this.f650c);
    }
}
