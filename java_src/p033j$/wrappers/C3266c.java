package p033j$.wrappers;

import java.util.PrimitiveIterator;
import p033j$.util.InterfaceC2903o;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2881l;
/* renamed from: j$.wrappers.c */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3266c implements InterfaceC2903o.InterfaceC2904a {

    /* renamed from: a */
    final /* synthetic */ PrimitiveIterator.OfInt f1259a;

    private /* synthetic */ C3266c(PrimitiveIterator.OfInt ofInt) {
        this.f1259a = ofInt;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2903o.InterfaceC2904a m166a(PrimitiveIterator.OfInt ofInt) {
        if (ofInt == null) {
            return null;
        }
        return ofInt instanceof C3268d ? ((C3268d) ofInt).f1261a : new C3266c(ofInt);
    }

    @Override // p033j$.util.InterfaceC2903o.InterfaceC2904a
    /* renamed from: c */
    public /* synthetic */ void mo165c(InterfaceC2881l interfaceC2881l) {
        this.f1259a.forEachRemaining(C3253Q.m182a(interfaceC2881l));
    }

    @Override // p033j$.util.InterfaceC2903o.InterfaceC2904a, p033j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1259a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.InterfaceC2903o
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1259a.forEachRemaining((PrimitiveIterator.OfInt) obj);
    }

    @Override // java.util.Iterator
    public /* synthetic */ boolean hasNext() {
        return this.f1259a.hasNext();
    }

    @Override // p033j$.util.InterfaceC2903o.InterfaceC2904a, java.util.Iterator
    public /* synthetic */ Integer next() {
        return this.f1259a.next();
    }

    @Override // java.util.Iterator
    public /* synthetic */ Object next() {
        return this.f1259a.next();
    }

    @Override // p033j$.util.InterfaceC2903o.InterfaceC2904a
    public /* synthetic */ int nextInt() {
        return this.f1259a.nextInt();
    }

    @Override // java.util.Iterator
    public /* synthetic */ void remove() {
        this.f1259a.remove();
    }
}
