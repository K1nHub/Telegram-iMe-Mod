package p033j$.wrappers;

import java.util.PrimitiveIterator;
import p033j$.util.InterfaceC2846m;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2820f;
/* renamed from: j$.wrappers.a */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3207a implements InterfaceC2846m {

    /* renamed from: a */
    final /* synthetic */ PrimitiveIterator.OfDouble f1254a;

    private /* synthetic */ C3207a(PrimitiveIterator.OfDouble ofDouble) {
        this.f1254a = ofDouble;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2846m m172a(PrimitiveIterator.OfDouble ofDouble) {
        if (ofDouble == null) {
            return null;
        }
        return ofDouble instanceof C3209b ? ((C3209b) ofDouble).f1256a : new C3207a(ofDouble);
    }

    @Override // p033j$.util.InterfaceC2846m
    /* renamed from: e */
    public /* synthetic */ void mo171e(InterfaceC2820f interfaceC2820f) {
        this.f1254a.forEachRemaining(C3167A.m250a(interfaceC2820f));
    }

    @Override // p033j$.util.InterfaceC2846m, p033j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1254a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.InterfaceC2848o
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1254a.forEachRemaining((PrimitiveIterator.OfDouble) obj);
    }

    @Override // java.util.Iterator
    public /* synthetic */ boolean hasNext() {
        return this.f1254a.hasNext();
    }

    @Override // p033j$.util.InterfaceC2846m, java.util.Iterator
    public /* synthetic */ Double next() {
        return this.f1254a.next();
    }

    @Override // java.util.Iterator
    public /* synthetic */ Object next() {
        return this.f1254a.next();
    }

    @Override // p033j$.util.InterfaceC2846m
    public /* synthetic */ double nextDouble() {
        return this.f1254a.nextDouble();
    }

    @Override // java.util.Iterator
    public /* synthetic */ void remove() {
        this.f1254a.remove();
    }
}
