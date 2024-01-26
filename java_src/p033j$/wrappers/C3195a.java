package p033j$.wrappers;

import java.util.PrimitiveIterator;
import p033j$.util.InterfaceC2839l;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2815f;
/* renamed from: j$.wrappers.a */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3195a implements InterfaceC2839l {

    /* renamed from: a */
    final /* synthetic */ PrimitiveIterator.OfDouble f1299a;

    private /* synthetic */ C3195a(PrimitiveIterator.OfDouble ofDouble) {
        this.f1299a = ofDouble;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2839l m224a(PrimitiveIterator.OfDouble ofDouble) {
        if (ofDouble == null) {
            return null;
        }
        return ofDouble instanceof C3197b ? ((C3197b) ofDouble).f1301a : new C3195a(ofDouble);
    }

    @Override // p033j$.util.InterfaceC2839l
    /* renamed from: e */
    public /* synthetic */ void mo223e(InterfaceC2815f interfaceC2815f) {
        this.f1299a.forEachRemaining(C3245z.m159a(interfaceC2815f));
    }

    @Override // p033j$.util.InterfaceC2839l, p033j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1299a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.InterfaceC2841n
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1299a.forEachRemaining((PrimitiveIterator.OfDouble) obj);
    }

    @Override // java.util.Iterator
    public /* synthetic */ boolean hasNext() {
        return this.f1299a.hasNext();
    }

    @Override // p033j$.util.InterfaceC2839l, java.util.Iterator
    public /* synthetic */ Double next() {
        return this.f1299a.next();
    }

    @Override // java.util.Iterator
    public /* synthetic */ Object next() {
        return this.f1299a.next();
    }

    @Override // p033j$.util.InterfaceC2839l
    public /* synthetic */ double nextDouble() {
        return this.f1299a.nextDouble();
    }

    @Override // java.util.Iterator
    public /* synthetic */ void remove() {
        this.f1299a.remove();
    }
}
