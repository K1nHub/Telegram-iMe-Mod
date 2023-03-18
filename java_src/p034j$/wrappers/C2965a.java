package p034j$.wrappers;

import java.util.PrimitiveIterator;
import p034j$.util.InterfaceC2604m;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2578f;
/* renamed from: j$.wrappers.a */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2965a implements InterfaceC2604m {

    /* renamed from: a */
    final /* synthetic */ PrimitiveIterator.OfDouble f1165a;

    private /* synthetic */ C2965a(PrimitiveIterator.OfDouble ofDouble) {
        this.f1165a = ofDouble;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2604m m169a(PrimitiveIterator.OfDouble ofDouble) {
        if (ofDouble == null) {
            return null;
        }
        return ofDouble instanceof C2967b ? ((C2967b) ofDouble).f1167a : new C2965a(ofDouble);
    }

    @Override // p034j$.util.InterfaceC2604m
    /* renamed from: e */
    public /* synthetic */ void mo168e(InterfaceC2578f interfaceC2578f) {
        this.f1165a.forEachRemaining(C2925A.m247a(interfaceC2578f));
    }

    @Override // p034j$.util.InterfaceC2604m, p034j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1165a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2606o
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1165a.forEachRemaining((PrimitiveIterator.OfDouble) obj);
    }

    @Override // java.util.Iterator
    public /* synthetic */ boolean hasNext() {
        return this.f1165a.hasNext();
    }

    @Override // p034j$.util.InterfaceC2604m, java.util.Iterator
    public /* synthetic */ Double next() {
        return this.f1165a.next();
    }

    @Override // java.util.Iterator
    public /* synthetic */ Object next() {
        return this.f1165a.next();
    }

    @Override // p034j$.util.InterfaceC2604m
    public /* synthetic */ double nextDouble() {
        return this.f1165a.nextDouble();
    }

    @Override // java.util.Iterator
    public /* synthetic */ void remove() {
        this.f1165a.remove();
    }
}
