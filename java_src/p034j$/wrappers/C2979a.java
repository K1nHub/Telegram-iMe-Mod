package p034j$.wrappers;

import java.util.PrimitiveIterator;
import p034j$.util.InterfaceC2618m;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2592f;
/* renamed from: j$.wrappers.a */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2979a implements InterfaceC2618m {

    /* renamed from: a */
    final /* synthetic */ PrimitiveIterator.OfDouble f1166a;

    private /* synthetic */ C2979a(PrimitiveIterator.OfDouble ofDouble) {
        this.f1166a = ofDouble;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2618m m168a(PrimitiveIterator.OfDouble ofDouble) {
        if (ofDouble == null) {
            return null;
        }
        return ofDouble instanceof C2981b ? ((C2981b) ofDouble).f1168a : new C2979a(ofDouble);
    }

    @Override // p034j$.util.InterfaceC2618m
    /* renamed from: e */
    public /* synthetic */ void mo167e(InterfaceC2592f interfaceC2592f) {
        this.f1166a.forEachRemaining(C2939A.m246a(interfaceC2592f));
    }

    @Override // p034j$.util.InterfaceC2618m, p034j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1166a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2620o
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1166a.forEachRemaining((PrimitiveIterator.OfDouble) obj);
    }

    @Override // java.util.Iterator
    public /* synthetic */ boolean hasNext() {
        return this.f1166a.hasNext();
    }

    @Override // p034j$.util.InterfaceC2618m, java.util.Iterator
    public /* synthetic */ Double next() {
        return this.f1166a.next();
    }

    @Override // java.util.Iterator
    public /* synthetic */ Object next() {
        return this.f1166a.next();
    }

    @Override // p034j$.util.InterfaceC2618m
    public /* synthetic */ double nextDouble() {
        return this.f1166a.nextDouble();
    }

    @Override // java.util.Iterator
    public /* synthetic */ void remove() {
        this.f1166a.remove();
    }
}
