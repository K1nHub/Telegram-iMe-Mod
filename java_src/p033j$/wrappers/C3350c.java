package p033j$.wrappers;

import java.util.PrimitiveIterator;
import p033j$.util.InterfaceC2987o;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2965l;
/* renamed from: j$.wrappers.c */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3350c implements InterfaceC2987o.InterfaceC2988a {

    /* renamed from: a */
    final /* synthetic */ PrimitiveIterator.OfInt f1268a;

    private /* synthetic */ C3350c(PrimitiveIterator.OfInt ofInt) {
        this.f1268a = ofInt;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2987o.InterfaceC2988a m166a(PrimitiveIterator.OfInt ofInt) {
        if (ofInt == null) {
            return null;
        }
        return ofInt instanceof C3352d ? ((C3352d) ofInt).f1270a : new C3350c(ofInt);
    }

    @Override // p033j$.util.InterfaceC2987o.InterfaceC2988a
    /* renamed from: c */
    public /* synthetic */ void mo165c(InterfaceC2965l interfaceC2965l) {
        this.f1268a.forEachRemaining(C3337Q.m182a(interfaceC2965l));
    }

    @Override // p033j$.util.InterfaceC2987o.InterfaceC2988a, p033j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1268a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.InterfaceC2987o
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1268a.forEachRemaining((PrimitiveIterator.OfInt) obj);
    }

    @Override // java.util.Iterator
    public /* synthetic */ boolean hasNext() {
        return this.f1268a.hasNext();
    }

    @Override // p033j$.util.InterfaceC2987o.InterfaceC2988a, java.util.Iterator
    public /* synthetic */ Integer next() {
        return this.f1268a.next();
    }

    @Override // java.util.Iterator
    public /* synthetic */ Object next() {
        return this.f1268a.next();
    }

    @Override // p033j$.util.InterfaceC2987o.InterfaceC2988a
    public /* synthetic */ int nextInt() {
        return this.f1268a.nextInt();
    }

    @Override // java.util.Iterator
    public /* synthetic */ void remove() {
        this.f1268a.remove();
    }
}
