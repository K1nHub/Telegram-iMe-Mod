package com.iMe.model.wallet.home;

import com.iMe.common.IdFabric$ViewTypes;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SlideItem.kt */
/* loaded from: classes4.dex */
public final class SlideItem {
    private final int itemType;
    private final BannerSlide slide;

    public static /* synthetic */ SlideItem copy$default(SlideItem slideItem, BannerSlide bannerSlide, int i, Object obj) {
        if ((i & 1) != 0) {
            bannerSlide = slideItem.slide;
        }
        return slideItem.copy(bannerSlide);
    }

    public final BannerSlide component1() {
        return this.slide;
    }

    public final SlideItem copy(BannerSlide slide) {
        Intrinsics.checkNotNullParameter(slide, "slide");
        return new SlideItem(slide);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof SlideItem) && this.slide == ((SlideItem) obj).slide;
    }

    public int hashCode() {
        return this.slide.hashCode();
    }

    public String toString() {
        return "SlideItem(slide=" + this.slide + ')';
    }

    public SlideItem(BannerSlide slide) {
        Intrinsics.checkNotNullParameter(slide, "slide");
        this.slide = slide;
        this.itemType = IdFabric$ViewTypes.SLIDE;
    }

    public final BannerSlide getSlide() {
        return this.slide;
    }

    public int getItemType() {
        return this.itemType;
    }
}
