package p000a.p001a.p002a.p003a.p005b.p006c;

import android.view.View;
import com.binance.android.binancepay.internal.activity.BinancePayActivity;
import kotlin.jvm.internal.Intrinsics;
import p000a.p001a.p002a.p003a.p005b.p007d.View$OnClickListenerC0005a;
/* renamed from: a.a.a.a.b.c.a */
/* loaded from: classes.dex */
public final class C0003a implements View$OnClickListenerC0005a.InterfaceC0006a {

    /* renamed from: a */
    public final /* synthetic */ BinancePayActivity f6a;

    /* renamed from: b */
    public final /* synthetic */ View$OnClickListenerC0005a f7b;

    public C0003a(BinancePayActivity binancePayActivity, View$OnClickListenerC0005a view$OnClickListenerC0005a) {
        this.f6a = binancePayActivity;
        this.f7b = view$OnClickListenerC0005a;
    }

    @Override // p000a.p001a.p002a.p003a.p005b.p007d.View$OnClickListenerC0005a.InterfaceC0006a
    /* renamed from: a */
    public void mo844a(View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.f7b.dismiss();
        this.f6a.m835a();
        this.f6a.finish();
    }

    @Override // p000a.p001a.p002a.p003a.p005b.p007d.View$OnClickListenerC0005a.InterfaceC0006a
    /* renamed from: b */
    public void mo843b(View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.f7b.dismiss();
        this.f6a.finish();
    }
}
