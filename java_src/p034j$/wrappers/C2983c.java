package p034j$.wrappers;

import java.util.PrimitiveIterator;
import p034j$.util.InterfaceC2620o;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2598l;
/* renamed from: j$.wrappers.c */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2983c implements InterfaceC2620o.InterfaceC2621a {

    /* renamed from: a */
    final /* synthetic */ PrimitiveIterator.OfInt f1170a;

    private /* synthetic */ C2983c(PrimitiveIterator.OfInt ofInt) {
        this.f1170a = ofInt;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2620o.InterfaceC2621a m162a(PrimitiveIterator.OfInt ofInt) {
        if (ofInt == null) {
            return null;
        }
        return ofInt instanceof C2985d ? ((C2985d) ofInt).f1172a : new C2983c(ofInt);
    }

    @Override // p034j$.util.InterfaceC2620o.InterfaceC2621a
    /* renamed from: c */
    public /* synthetic */ void mo161c(InterfaceC2598l interfaceC2598l) {
        this.f1170a.forEachRemaining(C2970Q.m178a(interfaceC2598l));
    }

    @Override // p034j$.util.InterfaceC2620o.InterfaceC2621a, p034j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1170a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2620o
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1170a.forEachRemaining((PrimitiveIterator.OfInt) obj);
    }

    @Override // java.util.Iterator
    public /* synthetic */ boolean hasNext() {
        return this.f1170a.hasNext();
    }

    @Override // p034j$.util.InterfaceC2620o.InterfaceC2621a, java.util.Iterator
    public /* synthetic */ Integer next() {
        return this.f1170a.next();
    }

    @Override // java.util.Iterator
    public /* synthetic */ Object next() {
        return this.f1170a.next();
    }

    @Override // p034j$.util.InterfaceC2620o.InterfaceC2621a
    public /* synthetic */ int nextInt() {
        return this.f1170a.nextInt();
    }

    @Override // java.util.Iterator
    public /* synthetic */ void remove() {
        this.f1170a.remove();
    }
}
