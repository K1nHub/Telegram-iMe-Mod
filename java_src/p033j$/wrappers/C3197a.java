package p033j$.wrappers;

import java.util.PrimitiveIterator;
import p033j$.util.InterfaceC2841l;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2817f;
/* renamed from: j$.wrappers.a */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3197a implements InterfaceC2841l {

    /* renamed from: a */
    final /* synthetic */ PrimitiveIterator.OfDouble f1299a;

    private /* synthetic */ C3197a(PrimitiveIterator.OfDouble ofDouble) {
        this.f1299a = ofDouble;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2841l m221a(PrimitiveIterator.OfDouble ofDouble) {
        if (ofDouble == null) {
            return null;
        }
        return ofDouble instanceof C3199b ? ((C3199b) ofDouble).f1301a : new C3197a(ofDouble);
    }

    @Override // p033j$.util.InterfaceC2841l
    /* renamed from: e */
    public /* synthetic */ void mo220e(InterfaceC2817f interfaceC2817f) {
        this.f1299a.forEachRemaining(C3247z.m156a(interfaceC2817f));
    }

    @Override // p033j$.util.InterfaceC2841l, p033j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1299a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.InterfaceC2843n
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1299a.forEachRemaining((PrimitiveIterator.OfDouble) obj);
    }

    @Override // java.util.Iterator
    public /* synthetic */ boolean hasNext() {
        return this.f1299a.hasNext();
    }

    @Override // p033j$.util.InterfaceC2841l, java.util.Iterator
    public /* synthetic */ Double next() {
        return this.f1299a.next();
    }

    @Override // java.util.Iterator
    public /* synthetic */ Object next() {
        return this.f1299a.next();
    }

    @Override // p033j$.util.InterfaceC2841l
    public /* synthetic */ double nextDouble() {
        return this.f1299a.nextDouble();
    }

    @Override // java.util.Iterator
    public /* synthetic */ void remove() {
        this.f1299a.remove();
    }
}
