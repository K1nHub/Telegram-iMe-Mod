package p033j$.wrappers;

import java.util.PrimitiveIterator;
import p033j$.util.InterfaceC2848o;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2826l;
/* renamed from: j$.wrappers.c */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3211c implements InterfaceC2848o.InterfaceC2849a {

    /* renamed from: a */
    final /* synthetic */ PrimitiveIterator.OfInt f1255a;

    private /* synthetic */ C3211c(PrimitiveIterator.OfInt ofInt) {
        this.f1255a = ofInt;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2848o.InterfaceC2849a m148a(PrimitiveIterator.OfInt ofInt) {
        if (ofInt == null) {
            return null;
        }
        return ofInt instanceof C3213d ? ((C3213d) ofInt).f1257a : new C3211c(ofInt);
    }

    @Override // p033j$.util.InterfaceC2848o.InterfaceC2849a
    /* renamed from: c */
    public /* synthetic */ void mo147c(InterfaceC2826l interfaceC2826l) {
        this.f1255a.forEachRemaining(C3198Q.m164a(interfaceC2826l));
    }

    @Override // p033j$.util.InterfaceC2848o.InterfaceC2849a, p033j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1255a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.InterfaceC2848o
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1255a.forEachRemaining((PrimitiveIterator.OfInt) obj);
    }

    @Override // java.util.Iterator
    public /* synthetic */ boolean hasNext() {
        return this.f1255a.hasNext();
    }

    @Override // p033j$.util.InterfaceC2848o.InterfaceC2849a, java.util.Iterator
    public /* synthetic */ Integer next() {
        return this.f1255a.next();
    }

    @Override // java.util.Iterator
    public /* synthetic */ Object next() {
        return this.f1255a.next();
    }

    @Override // p033j$.util.InterfaceC2848o.InterfaceC2849a
    public /* synthetic */ int nextInt() {
        return this.f1255a.nextInt();
    }

    @Override // java.util.Iterator
    public /* synthetic */ void remove() {
        this.f1255a.remove();
    }
}
