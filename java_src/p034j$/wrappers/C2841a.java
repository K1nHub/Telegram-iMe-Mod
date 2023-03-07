package p034j$.wrappers;

import java.util.PrimitiveIterator;
import p034j$.util.InterfaceC2480m;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2454f;
/* renamed from: j$.wrappers.a */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2841a implements InterfaceC2480m {

    /* renamed from: a */
    final /* synthetic */ PrimitiveIterator.OfDouble f1160a;

    private /* synthetic */ C2841a(PrimitiveIterator.OfDouble ofDouble) {
        this.f1160a = ofDouble;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2480m m169a(PrimitiveIterator.OfDouble ofDouble) {
        if (ofDouble == null) {
            return null;
        }
        return ofDouble instanceof C2843b ? ((C2843b) ofDouble).f1162a : new C2841a(ofDouble);
    }

    @Override // p034j$.util.InterfaceC2480m
    /* renamed from: e */
    public /* synthetic */ void mo168e(InterfaceC2454f interfaceC2454f) {
        this.f1160a.forEachRemaining(C2801A.m247a(interfaceC2454f));
    }

    @Override // p034j$.util.InterfaceC2480m, p034j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1160a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2482o
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1160a.forEachRemaining((PrimitiveIterator.OfDouble) obj);
    }

    @Override // java.util.Iterator
    public /* synthetic */ boolean hasNext() {
        return this.f1160a.hasNext();
    }

    @Override // p034j$.util.InterfaceC2480m, java.util.Iterator
    public /* synthetic */ Double next() {
        return this.f1160a.next();
    }

    @Override // p034j$.util.InterfaceC2480m, java.util.Iterator
    public /* synthetic */ Object next() {
        return this.f1160a.next();
    }

    @Override // p034j$.util.InterfaceC2480m
    public /* synthetic */ double nextDouble() {
        return this.f1160a.nextDouble();
    }

    @Override // java.util.Iterator
    public /* synthetic */ void remove() {
        this.f1160a.remove();
    }
}
