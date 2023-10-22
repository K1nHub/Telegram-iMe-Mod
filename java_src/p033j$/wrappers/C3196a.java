package p033j$.wrappers;

import java.util.PrimitiveIterator;
import p033j$.util.InterfaceC2840l;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2816f;
/* renamed from: j$.wrappers.a */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3196a implements InterfaceC2840l {

    /* renamed from: a */
    final /* synthetic */ PrimitiveIterator.OfDouble f1299a;

    private /* synthetic */ C3196a(PrimitiveIterator.OfDouble ofDouble) {
        this.f1299a = ofDouble;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2840l m220a(PrimitiveIterator.OfDouble ofDouble) {
        if (ofDouble == null) {
            return null;
        }
        return ofDouble instanceof C3198b ? ((C3198b) ofDouble).f1301a : new C3196a(ofDouble);
    }

    @Override // p033j$.util.InterfaceC2840l
    /* renamed from: e */
    public /* synthetic */ void mo219e(InterfaceC2816f interfaceC2816f) {
        this.f1299a.forEachRemaining(C3246z.m154a(interfaceC2816f));
    }

    @Override // p033j$.util.InterfaceC2840l, p033j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1299a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.InterfaceC2842n
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1299a.forEachRemaining((PrimitiveIterator.OfDouble) obj);
    }

    @Override // java.util.Iterator
    public /* synthetic */ boolean hasNext() {
        return this.f1299a.hasNext();
    }

    @Override // p033j$.util.InterfaceC2840l, java.util.Iterator
    public /* synthetic */ Double next() {
        return this.f1299a.next();
    }

    @Override // java.util.Iterator
    public /* synthetic */ Object next() {
        return this.f1299a.next();
    }

    @Override // p033j$.util.InterfaceC2840l
    public /* synthetic */ double nextDouble() {
        return this.f1299a.nextDouble();
    }

    @Override // java.util.Iterator
    public /* synthetic */ void remove() {
        this.f1299a.remove();
    }
}
