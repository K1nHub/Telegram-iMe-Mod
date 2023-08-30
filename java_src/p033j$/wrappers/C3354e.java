package p033j$.wrappers;

import java.util.PrimitiveIterator;
import p033j$.util.InterfaceC2990q;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2970q;
/* renamed from: j$.wrappers.e */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3354e implements InterfaceC2990q {

    /* renamed from: a */
    final /* synthetic */ PrimitiveIterator.OfLong f1272a;

    private /* synthetic */ C3354e(PrimitiveIterator.OfLong ofLong) {
        this.f1272a = ofLong;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2990q m161a(PrimitiveIterator.OfLong ofLong) {
        if (ofLong == null) {
            return null;
        }
        return ofLong instanceof C3356f ? ((C3356f) ofLong).f1274a : new C3354e(ofLong);
    }

    @Override // p033j$.util.InterfaceC2990q
    /* renamed from: d */
    public /* synthetic */ void mo160d(InterfaceC2970q interfaceC2970q) {
        this.f1272a.forEachRemaining(C3357f0.m156a(interfaceC2970q));
    }

    @Override // p033j$.util.InterfaceC2990q, p033j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1272a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.InterfaceC2987o
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1272a.forEachRemaining((PrimitiveIterator.OfLong) obj);
    }

    @Override // java.util.Iterator
    public /* synthetic */ boolean hasNext() {
        return this.f1272a.hasNext();
    }

    @Override // p033j$.util.InterfaceC2990q, java.util.Iterator
    public /* synthetic */ Long next() {
        return this.f1272a.next();
    }

    @Override // java.util.Iterator
    public /* synthetic */ Object next() {
        return this.f1272a.next();
    }

    @Override // p033j$.util.InterfaceC2990q
    public /* synthetic */ long nextLong() {
        return this.f1272a.nextLong();
    }

    @Override // java.util.Iterator
    public /* synthetic */ void remove() {
        this.f1272a.remove();
    }
}
