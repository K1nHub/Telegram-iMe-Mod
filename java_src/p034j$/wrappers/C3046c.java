package p034j$.wrappers;

import java.util.PrimitiveIterator;
import p034j$.util.InterfaceC2683o;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2661l;
/* renamed from: j$.wrappers.c */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3046c implements InterfaceC2683o.InterfaceC2684a {

    /* renamed from: a */
    final /* synthetic */ PrimitiveIterator.OfInt f1170a;

    private /* synthetic */ C3046c(PrimitiveIterator.OfInt ofInt) {
        this.f1170a = ofInt;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2683o.InterfaceC2684a m143a(PrimitiveIterator.OfInt ofInt) {
        if (ofInt == null) {
            return null;
        }
        return ofInt instanceof C3048d ? ((C3048d) ofInt).f1172a : new C3046c(ofInt);
    }

    @Override // p034j$.util.InterfaceC2683o.InterfaceC2684a
    /* renamed from: c */
    public /* synthetic */ void mo142c(InterfaceC2661l interfaceC2661l) {
        this.f1170a.forEachRemaining(C3033Q.m159a(interfaceC2661l));
    }

    @Override // p034j$.util.InterfaceC2683o.InterfaceC2684a, p034j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1170a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2683o
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1170a.forEachRemaining((PrimitiveIterator.OfInt) obj);
    }

    @Override // java.util.Iterator
    public /* synthetic */ boolean hasNext() {
        return this.f1170a.hasNext();
    }

    @Override // p034j$.util.InterfaceC2683o.InterfaceC2684a, java.util.Iterator
    public /* synthetic */ Integer next() {
        return this.f1170a.next();
    }

    @Override // java.util.Iterator
    public /* synthetic */ Object next() {
        return this.f1170a.next();
    }

    @Override // p034j$.util.InterfaceC2683o.InterfaceC2684a
    public /* synthetic */ int nextInt() {
        return this.f1170a.nextInt();
    }

    @Override // java.util.Iterator
    public /* synthetic */ void remove() {
        this.f1170a.remove();
    }
}
