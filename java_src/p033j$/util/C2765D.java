package p033j$.util;

import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Objects;
import p033j$.util.Iterator;
import p033j$.util.function.Consumer;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.D */
/* loaded from: classes2.dex */
public class C2765D implements Spliterator {

    /* renamed from: a */
    private final Collection f671a;

    /* renamed from: b */
    private Iterator f672b = null;

    /* renamed from: c */
    private final int f673c;

    /* renamed from: d */
    private long f674d;

    /* renamed from: e */
    private int f675e;

    public C2765D(Collection collection, int i) {
        this.f671a = collection;
        this.f673c = (i & 4096) == 0 ? i | 64 | 16384 : i;
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public boolean mo182b(Consumer consumer) {
        Objects.requireNonNull(consumer);
        if (this.f672b == null) {
            this.f672b = this.f671a.iterator();
            this.f674d = this.f671a.size();
        }
        if (this.f672b.hasNext()) {
            consumer.accept(this.f672b.next());
            return true;
        }
        return false;
    }

    @Override // p033j$.util.Spliterator
    public int characteristics() {
        return this.f673c;
    }

    @Override // p033j$.util.Spliterator
    public long estimateSize() {
        if (this.f672b == null) {
            this.f672b = this.f671a.iterator();
            long size = this.f671a.size();
            this.f674d = size;
            return size;
        }
        return this.f674d;
    }

    @Override // p033j$.util.Spliterator
    public void forEachRemaining(Consumer consumer) {
        Objects.requireNonNull(consumer);
        Iterator it = this.f672b;
        if (it == null) {
            it = this.f671a.iterator();
            this.f672b = it;
            this.f674d = this.f671a.size();
        }
        if (it instanceof Iterator) {
            ((Iterator) it).forEachRemaining(consumer);
        } else {
            Iterator.CC.$default$forEachRemaining(it, consumer);
        }
    }

    @Override // p033j$.util.Spliterator
    public Comparator getComparator() {
        if (AbstractC2838k.m604e(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2838k.m605d(this);
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2838k.m604e(this, i);
    }

    @Override // p033j$.util.Spliterator
    public Spliterator trySplit() {
        long j;
        java.util.Iterator it = this.f672b;
        if (it == null) {
            it = this.f671a.iterator();
            this.f672b = it;
            j = this.f671a.size();
            this.f674d = j;
        } else {
            j = this.f674d;
        }
        if (j <= 1 || !it.hasNext()) {
            return null;
        }
        int i = this.f675e + 1024;
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
        this.f675e = i2;
        long j2 = this.f674d;
        if (j2 != Long.MAX_VALUE) {
            this.f674d = j2 - i2;
        }
        return new C3153v(objArr, 0, i2, this.f673c);
    }
}
