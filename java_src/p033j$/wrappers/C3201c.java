package p033j$.wrappers;

import java.util.PrimitiveIterator;
import p033j$.util.InterfaceC2843n;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2823l;
/* renamed from: j$.wrappers.c */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3201c implements InterfaceC2843n.InterfaceC2844a {

    /* renamed from: a */
    final /* synthetic */ PrimitiveIterator.OfInt f1303a;

    private /* synthetic */ C3201c(PrimitiveIterator.OfInt ofInt) {
        this.f1303a = ofInt;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2843n.InterfaceC2844a m216a(PrimitiveIterator.OfInt ofInt) {
        if (ofInt == null) {
            return null;
        }
        return ofInt instanceof C3203d ? ((C3203d) ofInt).f1305a : new C3201c(ofInt);
    }

    @Override // p033j$.util.InterfaceC2843n.InterfaceC2844a
    /* renamed from: c */
    public /* synthetic */ void mo215c(InterfaceC2823l interfaceC2823l) {
        this.f1303a.forEachRemaining(C3186O.m234a(interfaceC2823l));
    }

    @Override // p033j$.util.InterfaceC2843n.InterfaceC2844a, p033j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1303a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.InterfaceC2843n
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1303a.forEachRemaining((PrimitiveIterator.OfInt) obj);
    }

    @Override // java.util.Iterator
    public /* synthetic */ boolean hasNext() {
        return this.f1303a.hasNext();
    }

    @Override // p033j$.util.InterfaceC2843n.InterfaceC2844a, java.util.Iterator
    public /* synthetic */ Integer next() {
        return this.f1303a.next();
    }

    @Override // java.util.Iterator
    public /* synthetic */ Object next() {
        return this.f1303a.next();
    }

    @Override // p033j$.util.InterfaceC2843n.InterfaceC2844a
    public /* synthetic */ int nextInt() {
        return this.f1303a.nextInt();
    }

    @Override // java.util.Iterator
    public /* synthetic */ void remove() {
        this.f1303a.remove();
    }
}
