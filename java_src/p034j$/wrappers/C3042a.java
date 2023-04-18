package p034j$.wrappers;

import java.util.PrimitiveIterator;
import p034j$.util.InterfaceC2681m;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2655f;
/* renamed from: j$.wrappers.a */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3042a implements InterfaceC2681m {

    /* renamed from: a */
    final /* synthetic */ PrimitiveIterator.OfDouble f1166a;

    private /* synthetic */ C3042a(PrimitiveIterator.OfDouble ofDouble) {
        this.f1166a = ofDouble;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2681m m149a(PrimitiveIterator.OfDouble ofDouble) {
        if (ofDouble == null) {
            return null;
        }
        return ofDouble instanceof C3044b ? ((C3044b) ofDouble).f1168a : new C3042a(ofDouble);
    }

    @Override // p034j$.util.InterfaceC2681m
    /* renamed from: e */
    public /* synthetic */ void mo148e(InterfaceC2655f interfaceC2655f) {
        this.f1166a.forEachRemaining(C3002A.m227a(interfaceC2655f));
    }

    @Override // p034j$.util.InterfaceC2681m, p034j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1166a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2683o
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1166a.forEachRemaining((PrimitiveIterator.OfDouble) obj);
    }

    @Override // java.util.Iterator
    public /* synthetic */ boolean hasNext() {
        return this.f1166a.hasNext();
    }

    @Override // p034j$.util.InterfaceC2681m, java.util.Iterator
    public /* synthetic */ Double next() {
        return this.f1166a.next();
    }

    @Override // java.util.Iterator
    public /* synthetic */ Object next() {
        return this.f1166a.next();
    }

    @Override // p034j$.util.InterfaceC2681m
    public /* synthetic */ double nextDouble() {
        return this.f1166a.nextDouble();
    }

    @Override // java.util.Iterator
    public /* synthetic */ void remove() {
        this.f1166a.remove();
    }
}
