package com.iMe.feature.socialMedias.auth;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* compiled from: FragmentNavArgsLazy.kt */
/* loaded from: classes3.dex */
public final class AuthScreen$special$$inlined$navArgs$1 extends Lambda implements Function0<Bundle> {
    final /* synthetic */ Fragment $this_navArgs;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AuthScreen$special$$inlined$navArgs$1(Fragment fragment) {
        super(0);
        this.$this_navArgs = fragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final Bundle invoke() {
        Bundle arguments = this.$this_navArgs.getArguments();
        if (arguments != null) {
            return arguments;
        }
        throw new IllegalStateException("Fragment " + this.$this_navArgs + " has null arguments");
    }
}