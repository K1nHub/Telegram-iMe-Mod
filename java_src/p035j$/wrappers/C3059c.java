package p035j$.wrappers;

import java.util.PrimitiveIterator;
import p035j$.util.InterfaceC2696o;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2674l;
/* renamed from: j$.wrappers.c */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3059c implements InterfaceC2696o.InterfaceC2697a {

    /* renamed from: a */
    final /* synthetic */ PrimitiveIterator.OfInt f1175a;

    private /* synthetic */ C3059c(PrimitiveIterator.OfInt ofInt) {
        this.f1175a = ofInt;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2696o.InterfaceC2697a m157a(PrimitiveIterator.OfInt ofInt) {
        if (ofInt == null) {
            return null;
        }
        return ofInt instanceof C3061d ? ((C3061d) ofInt).f1177a : new C3059c(ofInt);
    }

    @Override // p035j$.util.InterfaceC2696o.InterfaceC2697a
    /* renamed from: c */
    public /* synthetic */ void mo156c(InterfaceC2674l interfaceC2674l) {
        this.f1175a.forEachRemaining(C3046Q.m173a(interfaceC2674l));
    }

    @Override // p035j$.util.InterfaceC2696o.InterfaceC2697a, p035j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1175a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p035j$.util.InterfaceC2696o
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1175a.forEachRemaining((PrimitiveIterator.OfInt) obj);
    }

    @Override // java.util.Iterator
    public /* synthetic */ boolean hasNext() {
        return this.f1175a.hasNext();
    }

    @Override // p035j$.util.InterfaceC2696o.InterfaceC2697a, java.util.Iterator
    public /* synthetic */ Integer next() {
        return this.f1175a.next();
    }

    @Override // java.util.Iterator
    public /* synthetic */ Object next() {
        return this.f1175a.next();
    }

    @Override // p035j$.util.InterfaceC2696o.InterfaceC2697a
    public /* synthetic */ int nextInt() {
        return this.f1175a.nextInt();
    }

    @Override // java.util.Iterator
    public /* synthetic */ void remove() {
        this.f1175a.remove();
    }
}
