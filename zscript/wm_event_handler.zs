/* Copyright Alexander 'm8f' Kromm (mmaulwurff@gmail.com) 2018-2020
 *
 * This file is a part of Weapon Menu+.
 *
 * Weapon Menu+ is free software: you can redistribute it and/or modify it under
 * the terms of the GNU General Public License as published by the Free Software
 * Foundation, either version 3 of the License, or (at your option) any later
 * version.
 *
 * Weapon Menu+ is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
 * details.
 *
 * You should have received a copy of the GNU General Public License along with
 * Weapon Menu+.  If not, see <https://www.gnu.org/licenses/>.
 */

class wm_EventHandler : EventHandler
{

// public: // EventHandler /////////////////////////////////////////////////////////////////////////

  override
  void playerEntered(PlayerEvent event)
  {
    mSettings = wm_Settings.of();
    mView     = wm_View.of();
    mModel    = wm_Model.of(mView);
    mInput    = wm_Input.of(mView, mModel);
  }

  override
  void networkProcess(ConsoleEvent event)
  {
    if (mInput == NULL) { return; }

    mInput.process(event.name);
  }

  override
  void renderOverlay(RenderEvent event)
  {
    if (mView == NULL) { return; }

    mView.show();
  }

// public: /////////////////////////////////////////////////////////////////////////////////////////

  wm_Settings getSettings() const { return mSettings; }

// private: ////////////////////////////////////////////////////////////////////////////////////////

  private wm_Settings mSettings;
  private wm_View     mView;
  private wm_Model    mModel;
  private wm_Input    mInput;

} // class wm_EventHandler
