package p034j$.wrappers;

import java.util.PrimitiveIterator;
import p034j$.util.InterfaceC2722o;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2700l;
/* renamed from: j$.wrappers.c */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3085c implements InterfaceC2722o.InterfaceC2723a {

    /* renamed from: a */
    final /* synthetic */ PrimitiveIterator.OfInt f1173a;

    private /* synthetic */ C3085c(PrimitiveIterator.OfInt ofInt) {
        this.f1173a = ofInt;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2722o.InterfaceC2723a m148a(PrimitiveIterator.OfInt ofInt) {
        if (ofInt == null) {
            return null;
        }
        return ofInt instanceof C3087d ? ((C3087d) ofInt).f1175a : new C3085c(ofInt);
    }

    @Override // p034j$.util.InterfaceC2722o.InterfaceC2723a
    /* renamed from: c */
    public /* synthetic */ void mo147c(InterfaceC2700l interfaceC2700l) {
        this.f1173a.forEachRemaining(C3072Q.m164a(interfaceC2700l));
    }

    @Override // p034j$.util.InterfaceC2722o.InterfaceC2723a, p034j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1173a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2722o
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1173a.forEachRemaining((PrimitiveIterator.OfInt) obj);
    }

    @Override // java.util.Iterator
    public /* synthetic */ boolean hasNext() {
        return this.f1173a.hasNext();
    }

    @Override // p034j$.util.InterfaceC2722o.InterfaceC2723a, java.util.Iterator
    public /* synthetic */ Integer next() {
        return this.f1173a.next();
    }

    @Override // java.util.Iterator
    public /* synthetic */ Object next() {
        return this.f1173a.next();
    }

    @Override // p034j$.util.InterfaceC2722o.InterfaceC2723a
    public /* synthetic */ int nextInt() {
        return this.f1173a.nextInt();
    }

    @Override // java.util.Iterator
    public /* synthetic */ void remove() {
        this.f1173a.remove();
    }
}
