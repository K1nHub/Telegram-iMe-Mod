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
public class C2409G implements InterfaceC2487s {

    /* renamed from: a */
    private final Collection f544a;

    /* renamed from: b */
    private Iterator f545b = null;

    /* renamed from: c */
    private final int f546c;

    /* renamed from: d */
    private long f547d;

    /* renamed from: e */
    private int f548e;

    public C2409G(Collection collection, int i) {
        this.f544a = collection;
        this.f546c = (i & 4096) == 0 ? i | 64 | 16384 : i;
    }

    @Override // p034j$.util.InterfaceC2487s
    /* renamed from: b */
    public boolean mo128b(Consumer consumer) {
        Objects.requireNonNull(consumer);
        if (this.f545b == null) {
            this.f545b = this.f544a.iterator();
            this.f547d = this.f544a.size();
        }
        if (this.f545b.hasNext()) {
            consumer.accept(this.f545b.next());
            return true;
        }
        return false;
    }

    @Override // p034j$.util.InterfaceC2487s
    public int characteristics() {
        return this.f546c;
    }

    @Override // p034j$.util.InterfaceC2487s
    public long estimateSize() {
        if (this.f545b == null) {
            this.f545b = this.f544a.iterator();
            long size = this.f544a.size();
            this.f547d = size;
            return size;
        }
        return this.f547d;
    }

    @Override // p034j$.util.InterfaceC2487s
    public void forEachRemaining(Consumer consumer) {
        Objects.requireNonNull(consumer);
        Iterator it = this.f545b;
        if (it == null) {
            it = this.f544a.iterator();
            this.f545b = it;
            this.f547d = this.f544a.size();
        }
        if (it instanceof Iterator) {
            ((Iterator) it).forEachRemaining(consumer);
        } else {
            Iterator.CC.$default$forEachRemaining(it, consumer);
        }
    }

    @Override // p034j$.util.InterfaceC2487s
    public Comparator getComparator() {
        if (AbstractC2414a.m621f(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2414a.m622e(this);
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2414a.m621f(this, i);
    }

    @Override // p034j$.util.InterfaceC2487s
    public InterfaceC2487s trySplit() {
        long j;
        java.util.Iterator it = this.f545b;
        if (it == null) {
            it = this.f544a.iterator();
            this.f545b = it;
            j = this.f544a.size();
            this.f547d = j;
        } else {
            j = this.f547d;
        }
        if (j <= 1 || !it.hasNext()) {
            return null;
        }
        int i = this.f548e + 1024;
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
        this.f548e = i2;
        long j2 = this.f547d;
        if (j2 != Long.MAX_VALUE) {
            this.f547d = j2 - i2;
        }
        return new C2799y(objArr, 0, i2, this.f546c);
    }
}
