package com.iMe.feature.navigation;

import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.navigation.NavGraph;
import androidx.navigation.fragment.NavHostFragment;
import com.iMe.feature.socialMedias.SocialAuthDomain;
import com.iMe.feature.socialMedias.SocialNetwork;
import com.iMe.feature.socialMedias.auth.AuthScreenDirections;
import com.iMe.feature.socialMedias.webScreen.SocialWebScreenDirections;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3558R;
import timber.log.Timber;
/* compiled from: NavigationScreen.kt */
/* loaded from: classes3.dex */
public final class NavigationScreen extends FragmentActivity {

    /* compiled from: NavigationScreen.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[NavDirection.values().length];
            try {
                iArr[NavDirection.SOCIAL_AUTH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[NavDirection.SOCIAL_WEB.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[NavDirection.DEV_TOOLS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        Parcelable parcelable;
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(C3558R.layout.fork_navigation_screen);
        Intent intent = getIntent();
        Intrinsics.checkNotNullExpressionValue(intent, "intent");
        if (Build.VERSION.SDK_INT >= 33) {
            parcelable = (Parcelable) intent.getParcelableExtra("nav_bundle", NavigationBundle.class);
        } else {
            Parcelable parcelableExtra = intent.getParcelableExtra("nav_bundle");
            if (!(parcelableExtra instanceof NavigationBundle)) {
                parcelableExtra = null;
            }
            parcelable = (NavigationBundle) parcelableExtra;
        }
        startDestination((NavigationBundle) parcelable);
    }

    private final void startDestination(NavigationBundle<Parcelable> navigationBundle) {
        NavDirection navDirection = navigationBundle != null ? navigationBundle.getNavDirection() : null;
        Fragment findFragmentById = getSupportFragmentManager().findFragmentById(C3558R.C3561id.main_content);
        Intrinsics.checkNotNull(findFragmentById, "null cannot be cast to non-null type androidx.navigation.fragment.NavHostFragment");
        NavHostFragment navHostFragment = (NavHostFragment) findFragmentById;
        NavGraph inflate = navHostFragment.getNavController().getNavInflater().inflate(C3558R.C3563navigation.fork_main_nav_graph);
        StringBuilder sb = new StringBuilder();
        sb.append("Start new destination with: ");
        sb.append(navigationBundle != null ? navigationBundle.getNavDirection() : null);
        Timber.m9d(sb.toString(), new Object[0]);
        NavDirection navDirection2 = navigationBundle != null ? navigationBundle.getNavDirection() : null;
        int i = navDirection2 == null ? -1 : WhenMappings.$EnumSwitchMapping$0[navDirection2.ordinal()];
        if (i == 1) {
            inflate.setStartDestination(C3558R.C3561id.socialAuthScreen);
            navHostFragment.getNavController().setGraph(inflate, getIntent().getExtras());
            Parcelable data = navigationBundle.getData();
            Intrinsics.checkNotNull(data, "null cannot be cast to non-null type com.iMe.feature.socialMedias.SocialAuthDomain");
            AuthScreenDirections.ToSocialAuth socialAuth = AuthScreenDirections.toSocialAuth((SocialAuthDomain) data);
            Intrinsics.checkNotNullExpressionValue(socialAuth, "toSocialAuth(navBundle.data as SocialAuthDomain)");
            navHostFragment.getNavController().navigate(socialAuth);
        } else if (i != 2) {
            if (i == 3) {
                inflate.setStartDestination(C3558R.C3561id.devSettings);
                return;
            }
            Timber.m7e("NavDirection is skipped: " + navDirection, new Object[0]);
        } else {
            inflate.setStartDestination(C3558R.C3561id.socialWebScreen);
            navHostFragment.getNavController().setGraph(inflate, getIntent().getExtras());
            Parcelable data2 = navigationBundle.getData();
            Intrinsics.checkNotNull(data2, "null cannot be cast to non-null type com.iMe.feature.socialMedias.SocialNetwork");
            SocialWebScreenDirections.ToSocialWeb socialWeb = SocialWebScreenDirections.toSocialWeb((SocialNetwork) data2);
            Intrinsics.checkNotNullExpressionValue(socialWeb, "toSocialWeb(navBundle.data as SocialNetwork)");
            navHostFragment.getNavController().navigate(socialWeb);
        }
    }
}
