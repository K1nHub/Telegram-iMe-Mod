package p033j$.wrappers;

import java.util.PrimitiveIterator;
import p033j$.util.InterfaceC2841n;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2821l;
/* renamed from: j$.wrappers.c */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3199c implements InterfaceC2841n.InterfaceC2842a {

    /* renamed from: a */
    final /* synthetic */ PrimitiveIterator.OfInt f1303a;

    private /* synthetic */ C3199c(PrimitiveIterator.OfInt ofInt) {
        this.f1303a = ofInt;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2841n.InterfaceC2842a m219a(PrimitiveIterator.OfInt ofInt) {
        if (ofInt == null) {
            return null;
        }
        return ofInt instanceof C3201d ? ((C3201d) ofInt).f1305a : new C3199c(ofInt);
    }

    @Override // p033j$.util.InterfaceC2841n.InterfaceC2842a
    /* renamed from: c */
    public /* synthetic */ void mo218c(InterfaceC2821l interfaceC2821l) {
        this.f1303a.forEachRemaining(C3184O.m237a(interfaceC2821l));
    }

    @Override // p033j$.util.InterfaceC2841n.InterfaceC2842a, p033j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1303a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.InterfaceC2841n
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1303a.forEachRemaining((PrimitiveIterator.OfInt) obj);
    }

    @Override // java.util.Iterator
    public /* synthetic */ boolean hasNext() {
        return this.f1303a.hasNext();
    }

    @Override // p033j$.util.InterfaceC2841n.InterfaceC2842a, java.util.Iterator
    public /* synthetic */ Integer next() {
        return this.f1303a.next();
    }

    @Override // java.util.Iterator
    public /* synthetic */ Object next() {
        return this.f1303a.next();
    }

    @Override // p033j$.util.InterfaceC2841n.InterfaceC2842a
    public /* synthetic */ int nextInt() {
        return this.f1303a.nextInt();
    }

    @Override // java.util.Iterator
    public /* synthetic */ void remove() {
        this.f1303a.remove();
    }
}
