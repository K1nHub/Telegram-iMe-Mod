package p033j$.wrappers;

import java.util.PrimitiveIterator;
import p033j$.util.InterfaceC2842n;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2822l;
/* renamed from: j$.wrappers.c */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3200c implements InterfaceC2842n.InterfaceC2843a {

    /* renamed from: a */
    final /* synthetic */ PrimitiveIterator.OfInt f1303a;

    private /* synthetic */ C3200c(PrimitiveIterator.OfInt ofInt) {
        this.f1303a = ofInt;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2842n.InterfaceC2843a m215a(PrimitiveIterator.OfInt ofInt) {
        if (ofInt == null) {
            return null;
        }
        return ofInt instanceof C3202d ? ((C3202d) ofInt).f1305a : new C3200c(ofInt);
    }

    @Override // p033j$.util.InterfaceC2842n.InterfaceC2843a
    /* renamed from: c */
    public /* synthetic */ void mo214c(InterfaceC2822l interfaceC2822l) {
        this.f1303a.forEachRemaining(C3185O.m233a(interfaceC2822l));
    }

    @Override // p033j$.util.InterfaceC2842n.InterfaceC2843a, p033j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1303a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.InterfaceC2842n
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1303a.forEachRemaining((PrimitiveIterator.OfInt) obj);
    }

    @Override // java.util.Iterator
    public /* synthetic */ boolean hasNext() {
        return this.f1303a.hasNext();
    }

    @Override // p033j$.util.InterfaceC2842n.InterfaceC2843a, java.util.Iterator
    public /* synthetic */ Integer next() {
        return this.f1303a.next();
    }

    @Override // java.util.Iterator
    public /* synthetic */ Object next() {
        return this.f1303a.next();
    }

    @Override // p033j$.util.InterfaceC2842n.InterfaceC2843a
    public /* synthetic */ int nextInt() {
        return this.f1303a.nextInt();
    }

    @Override // java.util.Iterator
    public /* synthetic */ void remove() {
        this.f1303a.remove();
    }
}
