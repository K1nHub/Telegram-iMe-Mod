package p034j$.wrappers;

import java.util.PrimitiveIterator;
import p034j$.util.InterfaceC2606o;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2584l;
/* renamed from: j$.wrappers.c */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2969c implements InterfaceC2606o.InterfaceC2607a {

    /* renamed from: a */
    final /* synthetic */ PrimitiveIterator.OfInt f1169a;

    private /* synthetic */ C2969c(PrimitiveIterator.OfInt ofInt) {
        this.f1169a = ofInt;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2606o.InterfaceC2607a m163a(PrimitiveIterator.OfInt ofInt) {
        if (ofInt == null) {
            return null;
        }
        return ofInt instanceof C2971d ? ((C2971d) ofInt).f1171a : new C2969c(ofInt);
    }

    @Override // p034j$.util.InterfaceC2606o.InterfaceC2607a
    /* renamed from: c */
    public /* synthetic */ void mo162c(InterfaceC2584l interfaceC2584l) {
        this.f1169a.forEachRemaining(C2956Q.m179a(interfaceC2584l));
    }

    @Override // p034j$.util.InterfaceC2606o.InterfaceC2607a, p034j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1169a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2606o
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1169a.forEachRemaining((PrimitiveIterator.OfInt) obj);
    }

    @Override // java.util.Iterator
    public /* synthetic */ boolean hasNext() {
        return this.f1169a.hasNext();
    }

    @Override // p034j$.util.InterfaceC2606o.InterfaceC2607a, java.util.Iterator
    public /* synthetic */ Integer next() {
        return this.f1169a.next();
    }

    @Override // java.util.Iterator
    public /* synthetic */ Object next() {
        return this.f1169a.next();
    }

    @Override // p034j$.util.InterfaceC2606o.InterfaceC2607a
    public /* synthetic */ int nextInt() {
        return this.f1169a.nextInt();
    }

    @Override // java.util.Iterator
    public /* synthetic */ void remove() {
        this.f1169a.remove();
    }
}
