package p033j$.wrappers;

import java.util.PrimitiveIterator;
import p033j$.util.InterfaceC2849p;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2830p;
/* renamed from: j$.wrappers.e */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3208e implements InterfaceC2849p {

    /* renamed from: a */
    final /* synthetic */ PrimitiveIterator.OfLong f1307a;

    private /* synthetic */ C3208e(PrimitiveIterator.OfLong ofLong) {
        this.f1307a = ofLong;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2849p m210a(PrimitiveIterator.OfLong ofLong) {
        if (ofLong == null) {
            return null;
        }
        return ofLong instanceof C3210f ? ((C3210f) ofLong).f1309a : new C3208e(ofLong);
    }

    @Override // p033j$.util.InterfaceC2849p
    /* renamed from: d */
    public /* synthetic */ void mo209d(InterfaceC2830p interfaceC2830p) {
        this.f1307a.forEachRemaining(C3207d0.m211a(interfaceC2830p));
    }

    @Override // p033j$.util.InterfaceC2849p, p033j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1307a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.InterfaceC2846n
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1307a.forEachRemaining((PrimitiveIterator.OfLong) obj);
    }

    @Override // java.util.Iterator
    public /* synthetic */ boolean hasNext() {
        return this.f1307a.hasNext();
    }

    @Override // p033j$.util.InterfaceC2849p, java.util.Iterator
    public /* synthetic */ Long next() {
        return this.f1307a.next();
    }

    @Override // java.util.Iterator
    public /* synthetic */ Object next() {
        return this.f1307a.next();
    }

    @Override // p033j$.util.InterfaceC2849p
    public /* synthetic */ long nextLong() {
        return this.f1307a.nextLong();
    }

    @Override // java.util.Iterator
    public /* synthetic */ void remove() {
        this.f1307a.remove();
    }
}
