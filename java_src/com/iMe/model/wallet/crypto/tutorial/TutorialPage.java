package com.iMe.model.wallet.crypto.tutorial;
/* compiled from: TutorialPage.kt */
/* loaded from: classes4.dex */
public final class TutorialPage {
    private final int animatedIcon;
    private final int description;
    private final int title;

    public static /* synthetic */ TutorialPage copy$default(TutorialPage tutorialPage, int i, int i2, int i3, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            i = tutorialPage.animatedIcon;
        }
        if ((i4 & 2) != 0) {
            i2 = tutorialPage.title;
        }
        if ((i4 & 4) != 0) {
            i3 = tutorialPage.description;
        }
        return tutorialPage.copy(i, i2, i3);
    }

    public final int component1() {
        return this.animatedIcon;
    }

    public final int component2() {
        return this.title;
    }

    public final int component3() {
        return this.description;
    }

    public final TutorialPage copy(int i, int i2, int i3) {
        return new TutorialPage(i, i2, i3);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TutorialPage) {
            TutorialPage tutorialPage = (TutorialPage) obj;
            return this.animatedIcon == tutorialPage.animatedIcon && this.title == tutorialPage.title && this.description == tutorialPage.description;
        }
        return false;
    }

    public int hashCode() {
        return (((this.animatedIcon * 31) + this.title) * 31) + this.description;
    }

    public String toString() {
        return "TutorialPage(animatedIcon=" + this.animatedIcon + ", title=" + this.title + ", description=" + this.description + ')';
    }

    public TutorialPage(int i, int i2, int i3) {
        this.animatedIcon = i;
        this.title = i2;
        this.description = i3;
    }

    public final int getAnimatedIcon() {
        return this.animatedIcon;
    }

    public final int getTitle() {
        return this.title;
    }

    public final int getDescription() {
        return this.description;
    }
}
