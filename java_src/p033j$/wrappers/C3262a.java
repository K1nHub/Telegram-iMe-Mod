package p033j$.wrappers;

import java.util.PrimitiveIterator;
import p033j$.util.InterfaceC2901m;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2875f;
/* renamed from: j$.wrappers.a */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3262a implements InterfaceC2901m {

    /* renamed from: a */
    final /* synthetic */ PrimitiveIterator.OfDouble f1255a;

    private /* synthetic */ C3262a(PrimitiveIterator.OfDouble ofDouble) {
        this.f1255a = ofDouble;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2901m m172a(PrimitiveIterator.OfDouble ofDouble) {
        if (ofDouble == null) {
            return null;
        }
        return ofDouble instanceof C3264b ? ((C3264b) ofDouble).f1257a : new C3262a(ofDouble);
    }

    @Override // p033j$.util.InterfaceC2901m
    /* renamed from: e */
    public /* synthetic */ void mo171e(InterfaceC2875f interfaceC2875f) {
        this.f1255a.forEachRemaining(C3222A.m250a(interfaceC2875f));
    }

    @Override // p033j$.util.InterfaceC2901m, p033j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1255a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.InterfaceC2903o
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1255a.forEachRemaining((PrimitiveIterator.OfDouble) obj);
    }

    @Override // java.util.Iterator
    public /* synthetic */ boolean hasNext() {
        return this.f1255a.hasNext();
    }

    @Override // p033j$.util.InterfaceC2901m, java.util.Iterator
    public /* synthetic */ Double next() {
        return this.f1255a.next();
    }

    @Override // java.util.Iterator
    public /* synthetic */ Object next() {
        return this.f1255a.next();
    }

    @Override // p033j$.util.InterfaceC2901m
    public /* synthetic */ double nextDouble() {
        return this.f1255a.nextDouble();
    }

    @Override // java.util.Iterator
    public /* synthetic */ void remove() {
        this.f1255a.remove();
    }
}
