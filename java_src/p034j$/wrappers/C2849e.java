package p034j$.wrappers;

import java.util.PrimitiveIterator;
import p034j$.util.InterfaceC2485q;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2465q;
/* renamed from: j$.wrappers.e */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2849e implements InterfaceC2485q {

    /* renamed from: a */
    final /* synthetic */ PrimitiveIterator.OfLong f1168a;

    private /* synthetic */ C2849e(PrimitiveIterator.OfLong ofLong) {
        this.f1168a = ofLong;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2485q m158a(PrimitiveIterator.OfLong ofLong) {
        if (ofLong == null) {
            return null;
        }
        return ofLong instanceof C2851f ? ((C2851f) ofLong).f1170a : new C2849e(ofLong);
    }

    @Override // p034j$.util.InterfaceC2485q
    /* renamed from: d */
    public /* synthetic */ void mo157d(InterfaceC2465q interfaceC2465q) {
        this.f1168a.forEachRemaining(C2852f0.m153a(interfaceC2465q));
    }

    @Override // p034j$.util.InterfaceC2485q, p034j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1168a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2482o
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1168a.forEachRemaining((PrimitiveIterator.OfLong) obj);
    }

    @Override // java.util.Iterator
    public /* synthetic */ boolean hasNext() {
        return this.f1168a.hasNext();
    }

    @Override // p034j$.util.InterfaceC2485q, java.util.Iterator
    public /* synthetic */ Long next() {
        return this.f1168a.next();
    }

    @Override // p034j$.util.InterfaceC2485q, java.util.Iterator
    public /* synthetic */ Object next() {
        return this.f1168a.next();
    }

    @Override // p034j$.util.InterfaceC2485q
    public /* synthetic */ long nextLong() {
        return this.f1168a.nextLong();
    }

    @Override // java.util.Iterator
    public /* synthetic */ void remove() {
        this.f1168a.remove();
    }
}
