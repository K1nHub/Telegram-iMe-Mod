package p000a.p001a.p002a.p003a.p005b.p006c;

import android.view.View;
import com.binance.android.binancepay.internal.activity.BinancePayActivity;
import kotlin.jvm.internal.Intrinsics;
import p000a.p001a.p002a.p003a.p005b.p007d.View$OnClickListenerC0005a;
/* renamed from: a.a.a.a.b.c.b */
/* loaded from: classes.dex */
public final class C0004b implements View$OnClickListenerC0005a.InterfaceC0006a {

    /* renamed from: a */
    public final /* synthetic */ BinancePayActivity f8a;

    /* renamed from: b */
    public final /* synthetic */ View$OnClickListenerC0005a f9b;

    public C0004b(BinancePayActivity binancePayActivity, View$OnClickListenerC0005a view$OnClickListenerC0005a) {
        this.f8a = binancePayActivity;
        this.f9b = view$OnClickListenerC0005a;
    }

    @Override // p000a.p001a.p002a.p003a.p005b.p007d.View$OnClickListenerC0005a.InterfaceC0006a
    /* renamed from: a */
    public void mo858a(View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.f9b.dismiss();
        this.f8a.m850a();
        this.f8a.finish();
    }

    @Override // p000a.p001a.p002a.p003a.p005b.p007d.View$OnClickListenerC0005a.InterfaceC0006a
    /* renamed from: b */
    public void mo857b(View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.f9b.dismiss();
        this.f8a.finish();
    }
}
