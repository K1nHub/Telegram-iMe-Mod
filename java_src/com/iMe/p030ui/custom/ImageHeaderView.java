package com.iMe.p030ui.custom;

import android.content.Context;
import android.content.res.ColorStateList;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.iMe.feature.profile.ProfileData$$ExternalSyntheticBackport0;
import com.iMe.utils.extentions.common.ImageViewExtKt;
import com.iMe.utils.extentions.common.ViewExtKt;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.telegram.messenger.C3634R;
import org.telegram.messenger.databinding.ForkContentImageHeaderBinding;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.AvatarDrawable;
/* compiled from: ImageHeaderView.kt */
/* renamed from: com.iMe.ui.custom.ImageHeaderView */
/* loaded from: classes3.dex */
public final class ImageHeaderView extends FrameLayout {
    private ForkContentImageHeaderBinding binding;
    private final Lazy networkIconCornerSize$delegate;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ImageHeaderView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ ImageHeaderView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImageHeaderView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Float>() { // from class: com.iMe.ui.custom.ImageHeaderView$networkIconCornerSize$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Float invoke() {
                return Float.valueOf(ImageHeaderView.this.getResources().getDimension(C3634R.dimen.icon_size_medium) / 2);
            }
        });
        this.networkIconCornerSize$delegate = lazy;
        ForkContentImageHeaderBinding inflate = ForkContentImageHeaderBinding.inflate(LayoutInflater.from(context));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(LayoutInflater.from(context))");
        this.binding = inflate;
        setupView();
    }

    private final float getNetworkIconCornerSize() {
        return ((Number) this.networkIconCornerSize$delegate.getValue()).floatValue();
    }

    public static /* synthetic */ void setupViewData$default(ImageHeaderView imageHeaderView, IconData iconData, String str, String str2, String str3, int i, Object obj) {
        if ((i & 2) != 0) {
            str = null;
        }
        imageHeaderView.setupViewData(iconData, str, str2, str3);
    }

    public final void setupViewData(IconData iconData, String str, String titleText, String subtitleText) {
        boolean isBlank;
        Intrinsics.checkNotNullParameter(iconData, "iconData");
        Intrinsics.checkNotNullParameter(titleText, "titleText");
        Intrinsics.checkNotNullParameter(subtitleText, "subtitleText");
        ForkContentImageHeaderBinding forkContentImageHeaderBinding = this.binding;
        AppCompatImageView setupViewData$lambda$5$lambda$2 = forkContentImageHeaderBinding.imageIcon;
        if (iconData instanceof IconData.RemoteImage) {
            Intrinsics.checkNotNullExpressionValue(setupViewData$lambda$5$lambda$2, "setupViewData$lambda$5$lambda$2");
            ImageViewExtKt.loadFrom$default(setupViewData$lambda$5$lambda$2, ((IconData.RemoteImage) iconData).getUrl(), null, false, 6, null);
        } else if (iconData instanceof IconData.ResourceDrawable) {
            setupViewData$lambda$5$lambda$2.setImageResource(((IconData.ResourceDrawable) iconData).getResId());
        } else if (iconData instanceof IconData.TextAvatar) {
            AvatarDrawable avatarDrawable = new AvatarDrawable();
            IconData.TextAvatar textAvatar = (IconData.TextAvatar) iconData;
            avatarDrawable.setInfo(textAvatar.getId(), textAvatar.getFirstName(), textAvatar.getLastName());
            setupViewData$lambda$5$lambda$2.setBackground(avatarDrawable);
        }
        if (str != null) {
            AppCompatImageView setupViewData$lambda$5$lambda$3 = forkContentImageHeaderBinding.imageNetworkIcon;
            Intrinsics.checkNotNullExpressionValue(setupViewData$lambda$5$lambda$3, "setupViewData$lambda$5$lambda$3");
            ViewExtKt.visible$default(setupViewData$lambda$5$lambda$3, false, 1, null);
            ImageViewExtKt.loadFrom$default(setupViewData$lambda$5$lambda$3, str, null, false, 6, null);
        }
        forkContentImageHeaderBinding.textTitle.setText(titleText);
        AppCompatTextView setupViewData$lambda$5$lambda$4 = forkContentImageHeaderBinding.textSubtitle;
        setupViewData$lambda$5$lambda$4.setText(subtitleText);
        Intrinsics.checkNotNullExpressionValue(setupViewData$lambda$5$lambda$4, "setupViewData$lambda$5$lambda$4");
        isBlank = StringsKt__StringsJVMKt.isBlank(subtitleText);
        setupViewData$lambda$5$lambda$4.setVisibility(true ^ isBlank ? 0 : 8);
    }

    public final void setupViewData(String iconUrl, String titleText, String subtitleText) {
        Intrinsics.checkNotNullParameter(iconUrl, "iconUrl");
        Intrinsics.checkNotNullParameter(titleText, "titleText");
        Intrinsics.checkNotNullParameter(subtitleText, "subtitleText");
        ForkContentImageHeaderBinding forkContentImageHeaderBinding = this.binding;
        AppCompatImageView imageIcon = forkContentImageHeaderBinding.imageIcon;
        Intrinsics.checkNotNullExpressionValue(imageIcon, "imageIcon");
        ImageViewExtKt.loadFrom$default(imageIcon, iconUrl, Integer.valueOf(C3634R.C3636drawable.fork_ic_internal_logo), false, 4, null);
        forkContentImageHeaderBinding.textTitle.setText(titleText);
        forkContentImageHeaderBinding.textSubtitle.setText(subtitleText);
    }

    public final void setupColors() {
        ForkContentImageHeaderBinding forkContentImageHeaderBinding = this.binding;
        AppCompatImageView appCompatImageView = forkContentImageHeaderBinding.imageNetworkIcon;
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
        materialShapeDrawable.setFillColor(ColorStateList.valueOf(Theme.getColor(Theme.key_windowBackgroundWhite)));
        materialShapeDrawable.setCornerSize(getNetworkIconCornerSize());
        appCompatImageView.setBackground(materialShapeDrawable);
        AppCompatTextView setupColors$lambda$9$lambda$8 = forkContentImageHeaderBinding.textTitle;
        setupColors$lambda$9$lambda$8.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$9$lambda$8, "setupColors$lambda$9$lambda$8");
        ViewExtKt.withMediumTypeface(setupColors$lambda$9$lambda$8);
        forkContentImageHeaderBinding.textSubtitle.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText));
    }

    private final void setupView() {
        setupColors();
        addView(this.binding.getRoot());
    }

    /* compiled from: ImageHeaderView.kt */
    /* renamed from: com.iMe.ui.custom.ImageHeaderView$IconData */
    /* loaded from: classes3.dex */
    public static abstract class IconData {
        public /* synthetic */ IconData(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private IconData() {
        }

        /* compiled from: ImageHeaderView.kt */
        /* renamed from: com.iMe.ui.custom.ImageHeaderView$IconData$ResourceDrawable */
        /* loaded from: classes3.dex */
        public static final class ResourceDrawable extends IconData {
            private final int resId;

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof ResourceDrawable) && this.resId == ((ResourceDrawable) obj).resId;
            }

            public int hashCode() {
                return this.resId;
            }

            public String toString() {
                return "ResourceDrawable(resId=" + this.resId + ')';
            }

            public ResourceDrawable(int i) {
                super(null);
                this.resId = i;
            }

            public final int getResId() {
                return this.resId;
            }
        }

        /* compiled from: ImageHeaderView.kt */
        /* renamed from: com.iMe.ui.custom.ImageHeaderView$IconData$RemoteImage */
        /* loaded from: classes3.dex */
        public static final class RemoteImage extends IconData {
            private final String url;

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof RemoteImage) && Intrinsics.areEqual(this.url, ((RemoteImage) obj).url);
            }

            public int hashCode() {
                return this.url.hashCode();
            }

            public String toString() {
                return "RemoteImage(url=" + this.url + ')';
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public RemoteImage(String url) {
                super(null);
                Intrinsics.checkNotNullParameter(url, "url");
                this.url = url;
            }

            public final String getUrl() {
                return this.url;
            }
        }

        /* compiled from: ImageHeaderView.kt */
        /* renamed from: com.iMe.ui.custom.ImageHeaderView$IconData$TextAvatar */
        /* loaded from: classes3.dex */
        public static final class TextAvatar extends IconData {
            private final String firstName;

            /* renamed from: id */
            private final long f394id;
            private final String lastName;

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj instanceof TextAvatar) {
                    TextAvatar textAvatar = (TextAvatar) obj;
                    return this.f394id == textAvatar.f394id && Intrinsics.areEqual(this.firstName, textAvatar.firstName) && Intrinsics.areEqual(this.lastName, textAvatar.lastName);
                }
                return false;
            }

            public int hashCode() {
                int m1018m = ((ProfileData$$ExternalSyntheticBackport0.m1018m(this.f394id) * 31) + this.firstName.hashCode()) * 31;
                String str = this.lastName;
                return m1018m + (str == null ? 0 : str.hashCode());
            }

            public String toString() {
                return "TextAvatar(id=" + this.f394id + ", firstName=" + this.firstName + ", lastName=" + this.lastName + ')';
            }

            public final long getId() {
                return this.f394id;
            }

            public final String getFirstName() {
                return this.firstName;
            }

            public final String getLastName() {
                return this.lastName;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public TextAvatar(long j, String firstName, String str) {
                super(null);
                Intrinsics.checkNotNullParameter(firstName, "firstName");
                this.f394id = j;
                this.firstName = firstName;
                this.lastName = str;
            }
        }
    }
}
