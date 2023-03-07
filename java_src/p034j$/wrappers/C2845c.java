package p034j$.wrappers;

import java.util.PrimitiveIterator;
import p034j$.util.InterfaceC2482o;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2460l;
/* renamed from: j$.wrappers.c */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2845c implements InterfaceC2482o.InterfaceC2483a {

    /* renamed from: a */
    final /* synthetic */ PrimitiveIterator.OfInt f1164a;

    private /* synthetic */ C2845c(PrimitiveIterator.OfInt ofInt) {
        this.f1164a = ofInt;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2482o.InterfaceC2483a m163a(PrimitiveIterator.OfInt ofInt) {
        if (ofInt == null) {
            return null;
        }
        return ofInt instanceof C2847d ? ((C2847d) ofInt).f1166a : new C2845c(ofInt);
    }

    @Override // p034j$.util.InterfaceC2482o.InterfaceC2483a
    /* renamed from: c */
    public /* synthetic */ void mo162c(InterfaceC2460l interfaceC2460l) {
        this.f1164a.forEachRemaining(C2832Q.m179a(interfaceC2460l));
    }

    @Override // p034j$.util.InterfaceC2482o.InterfaceC2483a, p034j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1164a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2482o
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1164a.forEachRemaining((PrimitiveIterator.OfInt) obj);
    }

    @Override // java.util.Iterator
    public /* synthetic */ boolean hasNext() {
        return this.f1164a.hasNext();
    }

    @Override // p034j$.util.InterfaceC2482o.InterfaceC2483a, java.util.Iterator
    public /* synthetic */ Integer next() {
        return this.f1164a.next();
    }

    @Override // p034j$.util.InterfaceC2482o.InterfaceC2483a, java.util.Iterator
    public /* synthetic */ Object next() {
        return this.f1164a.next();
    }

    @Override // p034j$.util.InterfaceC2482o.InterfaceC2483a
    public /* synthetic */ int nextInt() {
        return this.f1164a.nextInt();
    }

    @Override // java.util.Iterator
    public /* synthetic */ void remove() {
        this.f1164a.remove();
    }
}
