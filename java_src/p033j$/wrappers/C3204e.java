package p033j$.wrappers;

import java.util.PrimitiveIterator;
import p033j$.util.InterfaceC2845p;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2826p;
/* renamed from: j$.wrappers.e */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3204e implements InterfaceC2845p {

    /* renamed from: a */
    final /* synthetic */ PrimitiveIterator.OfLong f1307a;

    private /* synthetic */ C3204e(PrimitiveIterator.OfLong ofLong) {
        this.f1307a = ofLong;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2845p m209a(PrimitiveIterator.OfLong ofLong) {
        if (ofLong == null) {
            return null;
        }
        return ofLong instanceof C3206f ? ((C3206f) ofLong).f1309a : new C3204e(ofLong);
    }

    @Override // p033j$.util.InterfaceC2845p
    /* renamed from: d */
    public /* synthetic */ void mo208d(InterfaceC2826p interfaceC2826p) {
        this.f1307a.forEachRemaining(C3203d0.m210a(interfaceC2826p));
    }

    @Override // p033j$.util.InterfaceC2845p, p033j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1307a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.InterfaceC2842n
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1307a.forEachRemaining((PrimitiveIterator.OfLong) obj);
    }

    @Override // java.util.Iterator
    public /* synthetic */ boolean hasNext() {
        return this.f1307a.hasNext();
    }

    @Override // p033j$.util.InterfaceC2845p, java.util.Iterator
    public /* synthetic */ Long next() {
        return this.f1307a.next();
    }

    @Override // java.util.Iterator
    public /* synthetic */ Object next() {
        return this.f1307a.next();
    }

    @Override // p033j$.util.InterfaceC2845p
    public /* synthetic */ long nextLong() {
        return this.f1307a.nextLong();
    }

    @Override // java.util.Iterator
    public /* synthetic */ void remove() {
        this.f1307a.remove();
    }
}
