package p034j$.util;

import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Objects;
import org.telegram.tgnet.ConnectionsManager;
import p034j$.util.Iterator;
import p034j$.util.function.Consumer;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.G */
/* loaded from: classes2.dex */
public class C2533G implements InterfaceC2611s {

    /* renamed from: a */
    private final Collection f549a;

    /* renamed from: b */
    private Iterator f550b = null;

    /* renamed from: c */
    private final int f551c;

    /* renamed from: d */
    private long f552d;

    /* renamed from: e */
    private int f553e;

    public C2533G(Collection collection, int i) {
        this.f549a = collection;
        this.f551c = (i & 4096) == 0 ? i | 64 | 16384 : i;
    }

    @Override // p034j$.util.InterfaceC2611s
    /* renamed from: b */
    public boolean mo128b(Consumer consumer) {
        Objects.requireNonNull(consumer);
        if (this.f550b == null) {
            this.f550b = this.f549a.iterator();
            this.f552d = this.f549a.size();
        }
        if (this.f550b.hasNext()) {
            consumer.accept(this.f550b.next());
            return true;
        }
        return false;
    }

    @Override // p034j$.util.InterfaceC2611s
    public int characteristics() {
        return this.f551c;
    }

    @Override // p034j$.util.InterfaceC2611s
    public long estimateSize() {
        if (this.f550b == null) {
            this.f550b = this.f549a.iterator();
            long size = this.f549a.size();
            this.f552d = size;
            return size;
        }
        return this.f552d;
    }

    @Override // p034j$.util.InterfaceC2611s
    public void forEachRemaining(Consumer consumer) {
        Objects.requireNonNull(consumer);
        Iterator it = this.f550b;
        if (it == null) {
            it = this.f549a.iterator();
            this.f550b = it;
            this.f552d = this.f549a.size();
        }
        if (it instanceof Iterator) {
            ((Iterator) it).forEachRemaining(consumer);
        } else {
            Iterator.CC.$default$forEachRemaining(it, consumer);
        }
    }

    @Override // p034j$.util.InterfaceC2611s
    public Comparator getComparator() {
        if (AbstractC2538a.m621f(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2538a.m622e(this);
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2538a.m621f(this, i);
    }

    @Override // p034j$.util.InterfaceC2611s
    public InterfaceC2611s trySplit() {
        long j;
        java.util.Iterator it = this.f550b;
        if (it == null) {
            it = this.f549a.iterator();
            this.f550b = it;
            j = this.f549a.size();
            this.f552d = j;
        } else {
            j = this.f552d;
        }
        if (j <= 1 || !it.hasNext()) {
            return null;
        }
        int i = this.f553e + 1024;
        if (i > j) {
            i = (int) j;
        }
        if (i > 33554432) {
            i = ConnectionsManager.FileTypeVideo;
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
        this.f553e = i2;
        long j2 = this.f552d;
        if (j2 != Long.MAX_VALUE) {
            this.f552d = j2 - i2;
        }
        return new C2923y(objArr, 0, i2, this.f551c);
    }
}
