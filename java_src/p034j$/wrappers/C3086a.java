package p034j$.wrappers;

import java.util.PrimitiveIterator;
import p034j$.util.InterfaceC2725m;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2699f;
/* renamed from: j$.wrappers.a */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3086a implements InterfaceC2725m {

    /* renamed from: a */
    final /* synthetic */ PrimitiveIterator.OfDouble f1169a;

    private /* synthetic */ C3086a(PrimitiveIterator.OfDouble ofDouble) {
        this.f1169a = ofDouble;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2725m m154a(PrimitiveIterator.OfDouble ofDouble) {
        if (ofDouble == null) {
            return null;
        }
        return ofDouble instanceof C3088b ? ((C3088b) ofDouble).f1171a : new C3086a(ofDouble);
    }

    @Override // p034j$.util.InterfaceC2725m
    /* renamed from: e */
    public /* synthetic */ void mo153e(InterfaceC2699f interfaceC2699f) {
        this.f1169a.forEachRemaining(C3046A.m232a(interfaceC2699f));
    }

    @Override // p034j$.util.InterfaceC2725m, p034j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1169a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2727o
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1169a.forEachRemaining((PrimitiveIterator.OfDouble) obj);
    }

    @Override // java.util.Iterator
    public /* synthetic */ boolean hasNext() {
        return this.f1169a.hasNext();
    }

    @Override // p034j$.util.InterfaceC2725m, java.util.Iterator
    public /* synthetic */ Double next() {
        return this.f1169a.next();
    }

    @Override // java.util.Iterator
    public /* synthetic */ Object next() {
        return this.f1169a.next();
    }

    @Override // p034j$.util.InterfaceC2725m
    public /* synthetic */ double nextDouble() {
        return this.f1169a.nextDouble();
    }

    @Override // java.util.Iterator
    public /* synthetic */ void remove() {
        this.f1169a.remove();
    }
}
