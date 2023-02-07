import { render, screen } from '@testing-library/angular';
import { AppComponent } from './app.component';

describe('AppComponent', () => {
  it('should render homepage', async () => {
    await render(AppComponent);
    await screen.getByAltText('DOS4GM');
  });
});
