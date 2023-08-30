package p033j$.wrappers;

import java.util.PrimitiveIterator;
import p033j$.util.InterfaceC2985m;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2959f;
/* renamed from: j$.wrappers.a */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3346a implements InterfaceC2985m {

    /* renamed from: a */
    final /* synthetic */ PrimitiveIterator.OfDouble f1264a;

    private /* synthetic */ C3346a(PrimitiveIterator.OfDouble ofDouble) {
        this.f1264a = ofDouble;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2985m m172a(PrimitiveIterator.OfDouble ofDouble) {
        if (ofDouble == null) {
            return null;
        }
        return ofDouble instanceof C3348b ? ((C3348b) ofDouble).f1266a : new C3346a(ofDouble);
    }

    @Override // p033j$.util.InterfaceC2985m
    /* renamed from: e */
    public /* synthetic */ void mo171e(InterfaceC2959f interfaceC2959f) {
        this.f1264a.forEachRemaining(C3306A.m250a(interfaceC2959f));
    }

    @Override // p033j$.util.InterfaceC2985m, p033j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1264a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.InterfaceC2987o
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1264a.forEachRemaining((PrimitiveIterator.OfDouble) obj);
    }

    @Override // java.util.Iterator
    public /* synthetic */ boolean hasNext() {
        return this.f1264a.hasNext();
    }

    @Override // p033j$.util.InterfaceC2985m, java.util.Iterator
    public /* synthetic */ Double next() {
        return this.f1264a.next();
    }

    @Override // java.util.Iterator
    public /* synthetic */ Object next() {
        return this.f1264a.next();
    }

    @Override // p033j$.util.InterfaceC2985m
    public /* synthetic */ double nextDouble() {
        return this.f1264a.nextDouble();
    }

    @Override // java.util.Iterator
    public /* synthetic */ void remove() {
        this.f1264a.remove();
    }
}
