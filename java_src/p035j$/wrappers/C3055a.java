package p035j$.wrappers;

import java.util.PrimitiveIterator;
import p035j$.util.InterfaceC2694m;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2668f;
/* renamed from: j$.wrappers.a */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3055a implements InterfaceC2694m {

    /* renamed from: a */
    final /* synthetic */ PrimitiveIterator.OfDouble f1171a;

    private /* synthetic */ C3055a(PrimitiveIterator.OfDouble ofDouble) {
        this.f1171a = ofDouble;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2694m m163a(PrimitiveIterator.OfDouble ofDouble) {
        if (ofDouble == null) {
            return null;
        }
        return ofDouble instanceof C3057b ? ((C3057b) ofDouble).f1173a : new C3055a(ofDouble);
    }

    @Override // p035j$.util.InterfaceC2694m
    /* renamed from: e */
    public /* synthetic */ void mo162e(InterfaceC2668f interfaceC2668f) {
        this.f1171a.forEachRemaining(C3015A.m241a(interfaceC2668f));
    }

    @Override // p035j$.util.InterfaceC2694m, p035j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1171a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p035j$.util.InterfaceC2696o
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1171a.forEachRemaining((PrimitiveIterator.OfDouble) obj);
    }

    @Override // java.util.Iterator
    public /* synthetic */ boolean hasNext() {
        return this.f1171a.hasNext();
    }

    @Override // p035j$.util.InterfaceC2694m, java.util.Iterator
    public /* synthetic */ Double next() {
        return this.f1171a.next();
    }

    @Override // java.util.Iterator
    public /* synthetic */ Object next() {
        return this.f1171a.next();
    }

    @Override // p035j$.util.InterfaceC2694m
    public /* synthetic */ double nextDouble() {
        return this.f1171a.nextDouble();
    }

    @Override // java.util.Iterator
    public /* synthetic */ void remove() {
        this.f1171a.remove();
    }
}
